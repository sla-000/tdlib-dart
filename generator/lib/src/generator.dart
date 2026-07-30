import 'dart:io';

import 'package:collection/collection.dart';
import 'package:code_builder/code_builder.dart' as cb;
import 'package:dart_style/dart_style.dart';
import 'class.dart';
import 'data_class_extensions_generator.dart';
import 'group.dart';
import 'string_extensions.dart';
import 'variable.dart';
import 'variable_type.dart';

class Generator {
  static const List<String> illegalNames = <String>[
    'new',
    'object',
    'null',
    'boolean',
    'string',
    'default'
  ];

  final String root;

  late String tdApiDir = '${root}/lib/src/api';
  late String tdClientDir = '${root}/lib/src/client';
  late File tdApiFile = File('$tdApiDir/tdapi.dart');
  late File extensionsFile = File('$tdApiDir/extensions/extensions.dart');
  late File dataClassExtensionsFile =
      File('$tdApiDir/extensions/data_class_extensions.dart');

  late File convertExtensionFile =
      File('$tdApiDir/extensions/convert_extensions.dart');
  late Directory rootDir = Directory(root);
  late Directory functionsDir = Directory('$tdApiDir/functions');
  late Directory objectsDir = Directory('$tdApiDir/objects');

  final List<Class> classes;

  cb.Allocator _allocator = cb.Allocator();

  Generator({required this.root, required this.classes});

  void generate() {
    if (!rootDir.existsSync()) {
      throw "Root directory [${root}] not exist";
    }
    print("Root directory: ${root}");

    if (functionsDir.existsSync()) functionsDir.deleteSync(recursive: true);
    functionsDir.createSync(recursive: true);

    if (objectsDir.existsSync()) objectsDir.deleteSync(recursive: true);
    objectsDir.createSync(recursive: true);

    for (final Class c in classes) {
      final cb.DartEmitter emitter = cb.DartEmitter(allocator: _allocator);
      final cb.LibraryBuilder target = cb.LibraryBuilder();

      target.body.add(_createClass(c));

      final File file = File('${getPathOf(c)}/${snakeCase(c.name)}.dart');
      file.create();
      file.writeAsString(
        DartFormatter().format('${target.build().accept(emitter)}'),
        mode: FileMode.write,
      );
      _allocator = cb.Allocator();
    }

    final List<String> c = <String>[
      "export 'function.dart';",
      "export 'object.dart';",
    ];

    for (final Class value in classes) {
      c.add(
        'export \'${getGroupPath(value.group)}/${snakeCase(value.name)}.dart\';',
      );
    }
    if (tdApiFile.existsSync()) tdApiFile.deleteSync(recursive: true);
    tdApiFile.createSync(recursive: true);

    final File objFile = File(tdApiFile.path);
    objFile.create();
    c.sort();
    objFile.writeAsString(c.join('\n'));

    if (extensionsFile.existsSync()) extensionsFile.deleteSync(recursive: true);
    extensionsFile.createSync(recursive: true);

    extensionsFile.create();

    final List<String> extenisonsLines = <String>[
      "import '../tdapi.dart';"
    ];

    for (final Class tdClass in classes) {
      final cb.Extension extension =
          cb.Extension((cb.ExtensionBuilder extensionBuilder) {
        extensionBuilder.name = '${tdClass.name}Extensions';
        extensionBuilder.on = cb.TypeReference(
          (cb.TypeReferenceBuilder b) => b.symbol = tdClass.name,
        );

        if (tdClass.isAbstract()) {
          extensionBuilder.methods.add(_createMapMethod(tdClass));
          extensionBuilder.methods.add(_createMaybeMapMethod(tdClass));
        } else if (tdClass.variables.isNotEmpty) {
          extensionBuilder.methods.add(_createCopyMethod(tdClass));
        }
      });

      if (extension.methods.isNotEmpty) {
        extenisonsLines.add(
          DartFormatter().format('${extension.accept(cb.DartEmitter())}'),
        );
      }
    }

    extensionsFile.writeAsString(extenisonsLines.join('\n'));

    if (convertExtensionFile.existsSync()) {
      convertExtensionFile.deleteSync(recursive: true);
    }
    convertExtensionFile.createSync(recursive: true);

    convertExtensionFile.create();

    final List<String> convertExtensionFileLines = <String>[
      "import '../tdapi.dart';"
    ];

    convertExtensionFileLines.add('');
    convertExtensionFileLines
        .add('extension ConvertExtensions on Map<String, dynamic> {');
    convertExtensionFileLines.add('TdObject? toTdObject() {');
    convertExtensionFileLines.add("final String type = this['@type']!;");
    convertExtensionFileLines.add('switch (type) {');

    final List<String> cases = <String>[];

    for (final Class value in classes) {
      if (value.group != Group.functions) {
        cases.add(
          "case '${value.constructor}': return ${value.name}.fromJson(this);",
        );
      }
    }
    cases.sort();
    convertExtensionFileLines.addAll(cases);

    convertExtensionFileLines.add('default: return null;');
    convertExtensionFileLines.add('} } }');

    convertExtensionFile.writeAsString(convertExtensionFileLines.join('\n'));

    if (dataClassExtensionsFile.existsSync()) {
      dataClassExtensionsFile.deleteSync(recursive: true);
    }
    dataClassExtensionsFile.createSync(recursive: true);

    dataClassExtensionsFile.writeAsString(
      DataClassExtensionsGenerator().generate(classes),
    );
  }

  cb.Method _createCopyMethod(Class tdClass) {
    return cb.Method((cb.MethodBuilder methodBuilder) {
      methodBuilder.name = 'copyWith';
      methodBuilder.returns = cb.refer(tdClass.name);
      methodBuilder.optionalParameters.addAll(
        tdClass.variables.map((Variable v) {
          return cb.Parameter((cb.ParameterBuilder parameterBuilder) {
            parameterBuilder.named = true;

            final bool isLast = tdClass.variables.length == 1;

            if (isLast) {
              parameterBuilder.name = '${v.name.toVariableName()},';
            } else {
              parameterBuilder.name = v.name.toVariableName();
            }

            parameterBuilder.type = cb.Reference('${v.type}?');
          });
        }),
      );
      methodBuilder.lambda = true;
      methodBuilder.body = cb.Block((cb.BlockBuilder b) {
        b.statements.add(
          // ignore: invalid_use_of_visible_for_testing_member
          cb.ToCodeExpression(
            cb.refer(tdClass.name).newInstance(
              <cb.Expression>[],
              Map.fromEntries(
                tdClass.variables.map(
                  (Variable variable) {
                    final bool isLast = tdClass.variables.length == 1;

                    return MapEntry(
                      variable.name.toVariableName(),
                      cb.refer(
                        '${variable.name.toVariableName()} ?? this.${variable.name.toVariableName()}${isLast ? ',' : ''}',
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      });
    });
  }

  cb.Method _createMapMethod(Class tdClass) {
    final List<Class> inheritors =
        classes.where((Class c) => c.parent == tdClass.name).toList();

    return cb.Method((cb.MethodBuilder methodBuilder) {
      String createParamName(String name) {
        String result = name.replaceFirst(tdClass.name, '').lowerFirstChar();
        if (illegalNames.contains(result)) {
          result = '\$$result';
        }
        return result;
      }

      methodBuilder.name = 'map<TResult extends Object?>';
      methodBuilder.returns = cb.refer('TResult');
      methodBuilder.optionalParameters.addAll(
        inheritors.map((Class inheritor) {
          return cb.Parameter((cb.ParameterBuilder parameterBuilder) {
            parameterBuilder.named = true;
            parameterBuilder.required = true;
            final bool isLast = inheritors.length == 1;

            if (isLast) {
              parameterBuilder.name = '${createParamName(inheritor.name)},';
            } else {
              parameterBuilder.name = createParamName(inheritor.name);
            }

            parameterBuilder.type =
                cb.Reference('TResult Function(${inheritor.name} value)');
          });
        }),
      );
      methodBuilder.body = cb.Block((cb.BlockBuilder b) {
        b.statements.add(const cb.Code('switch(getConstructor()) {'));

        for (final Class inheritor in inheritors) {
          b.statements.addAll([
            cb.Code('case ${inheritor.name}.constructor:'),
            cb.Code(
              'return ${createParamName(inheritor.name)}.call(this as ${inheritor.name});',
            ),
          ]);
        }

        b.statements.add(const cb.Code('}'));
        b.statements.add(
          cb.Code(
            "throw StateError('not handled type $runtimeType');",
          ),
        );
      });
    });
  }

  cb.Method _createMaybeMapMethod(Class tdClass) {
    final List<Class> inheritors =
        classes.where((Class c) => c.parent == tdClass.name).toList();

    return cb.Method((cb.MethodBuilder methodBuilder) {
      String createParamName(String name) {
        String result = name.replaceFirst(tdClass.name, '').lowerFirstChar();
        if (illegalNames.contains(result)) {
          result = '\$$result';
        }
        return result;
      }

      methodBuilder.name = 'maybeMap<TResult extends Object?>';
      methodBuilder.returns = cb.refer('TResult');
      methodBuilder.optionalParameters.addAll(
        inheritors.map((Class inheritor) {
          return cb.Parameter((cb.ParameterBuilder parameterBuilder) {
            parameterBuilder.named = true;
            parameterBuilder.name = createParamName(inheritor.name);
            parameterBuilder.type =
                cb.Reference('TResult Function(${inheritor.name} value)?');
          });
        }),
      );

      methodBuilder.optionalParameters.add(
        cb.Parameter((cb.ParameterBuilder parameterBuilder) {
          parameterBuilder.named = true;
          parameterBuilder.required = true;
          parameterBuilder.name = 'orElse';
          parameterBuilder.type = const cb.Reference('TResult Function()');
        }),
      );

      methodBuilder.body = cb.Block((cb.BlockBuilder b) {
        b.statements.add(const cb.Code('switch(getConstructor()) {'));

        for (final Class inheritor in inheritors) {
          final String funcName = createParamName(inheritor.name);

          b.statements.addAll([
            cb.Code('case ${inheritor.name}.constructor:'),
            cb.Code('if ($funcName != null) {'),
            cb.Code('return $funcName.call(this as ${inheritor.name});'),
            const cb.Code('}'),
            const cb.Code('break;'),
          ]);
        }

        b.statements.add(const cb.Code('}'));
        b.statements.add(const cb.Code('return orElse.call();'));
      });
    });
  }

  cb.Class _createClass(Class c) {
    return cb.Class((cb.ClassBuilder b) {
      b.docs.add("// ignore: unused_import");
      b.docs.add("import 'package:collection/collection.dart';");
      b.docs.add("import 'package:meta/meta.dart';");
      b.docs.add("import '../tdapi.dart';");
      b.docs.addAll(c.description.resolveDoc());

      if (c.group == Group.functions) {
        b.docs.add('/// Returns [${c.returnType}]');
      }

      b.name = c.name;
      b.extend = cb.refer(c.parent);
      b.annotations.add(const cb.CodeExpression(cb.Code('immutable')));
      b.abstract = c.group == Group.classes;

      b.constructors.add(
        cb.Constructor((cb.ConstructorBuilder constructorBuilder) {
          constructorBuilder.constant =
              c.variables.isEmpty && c.group != Group.functions;
          final List<cb.Parameter> params = c.variables.map((Variable v) {
            return cb.Parameter((cb.ParameterBuilder parameterBuilder) {
              parameterBuilder.required = !v.isNullable;
              parameterBuilder.named = true;

              if (c.variables.length == 1) {
                parameterBuilder.name = '${v.name.toVariableName()},';
              } else {
                parameterBuilder.name = v.name.toVariableName();
              }
              parameterBuilder.toThis = true;
            });
          }).toList();
          constructorBuilder.optionalParameters.addAll(params);
          constructorBuilder.constant = true;
        }),
      );

      if (c.group != Group.functions) {
        b.methods.add(
          _createFromJsonStaticMethod(
            c,
            classes.sortedBy((element) => element.name),
          ),
        );
      }

      b.fields.addAll(
        c.variables.map((Variable v) {
          return cb.Field((cb.FieldBuilder fieldBuilder) {
            fieldBuilder.name = v.name.toVariableName();
            fieldBuilder.type =
                cb.Reference('${v.type} ${v.isNullable ? '?' : ''}');

            fieldBuilder.modifier = cb.FieldModifier.final$;
            fieldBuilder.docs.addAll(v.resolveFieldDoc());
          });
        }),
      );

      b.fields.add(
        cb.Field((cb.FieldBuilder fieldBuilder) {
          fieldBuilder.static = true;
          fieldBuilder.modifier = cb.FieldModifier.constant;
          fieldBuilder.name = 'constructor';
          fieldBuilder.type = const cb.Reference('String');
          fieldBuilder.assignment = cb.Code("'${c.constructor}'");
        }),
      );

      b.methods.add(
        cb.Method((cb.MethodBuilder methodBuilder) {
          methodBuilder.name = 'getConstructor';
          methodBuilder.returns = const cb.Reference('String');
          methodBuilder.lambda = true;
          methodBuilder.annotations.add(const cb.Reference('override'));
          methodBuilder.body = const cb.Code('constructor');
        }),
      );

      if (c.group != Group.classes) {
        b.methods.add(
          cb.Method((cb.MethodBuilder methodBuilder) {
            methodBuilder.name = 'toJson';
            methodBuilder.docs.add('\n');
            methodBuilder.returns = cb.TypeReference(
              (cb.TypeReferenceBuilder b) => b
                ..symbol = 'Map'
                ..types.addAll([cb.refer('String'), cb.refer('dynamic')]),
            );
            methodBuilder.lambda = true;
            methodBuilder.annotations.add(const cb.Reference('override'));

            final Map<Object, Object> values = Map.fromEntries(
              c.variables.map((Variable variable) {
                return MapEntry(
                  variable.name,
                  cb.refer(
                    _createVariableToJson(c.group, variable),
                  ),
                );
              }),
            );
            // ignore: invalid_use_of_visible_for_testing_member
            methodBuilder.body = cb.ToCodeExpression(
              cb.literalMap(
                values
                  ..['@type'] = cb.refer(
                      'constructor${c.variables.length == 0 ? ',' : ''}'),
                cb.refer('String'),
                cb.refer('dynamic'),
              ),
            );
          }),
        );
      }

      b.methods.add(
        cb.Method((cb.MethodBuilder methodBuilder) {
          methodBuilder.docs.add('\n');
          methodBuilder.annotations.add(const cb.Reference('override'));
          methodBuilder.name = 'operator ==';
          methodBuilder.returns = cb.refer('bool');
          methodBuilder.lambda = true;
          methodBuilder.requiredParameters.add(
            cb.Parameter((cb.ParameterBuilder parameterBuilder) {
              parameterBuilder.type = cb.refer('Object');
              parameterBuilder.name = 'other';
            }),
          );
          if (c.variables.isEmpty) {
            methodBuilder.body = cb.Code(
              'identical(this, other) || (other.runtimeType == runtimeType && other is ${c.name})',
            );
          } else {
            methodBuilder.body = cb.Code(
              'identical(this, other) || (other.runtimeType == runtimeType && other is ${c.name} && ${c.variables.map((e) => 'const DeepCollectionEquality().equals(other.${e.name.toVariableName()}, ${e.name.toVariableName()})').join(' && ')})',
            );
          }
        }),
      );

      b.methods.add(
        cb.Method((cb.MethodBuilder methodBuilder) {
          methodBuilder.docs.add('\n');
          methodBuilder.annotations.add(const cb.Reference('override'));
          methodBuilder.name = 'hashCode';
          methodBuilder.returns = cb.refer('int');
          methodBuilder.lambda = true;
          methodBuilder.type = cb.MethodType.getter;
          if (c.variables.isEmpty) {
            methodBuilder.body = const cb.Code('runtimeType.hashCode');
          } else {
            methodBuilder.body = cb.Code(
              'Object.hashAll([runtimeType, ${c.variables.map((e) => 'const DeepCollectionEquality().hash(${e.name.toVariableName()})').join(', ')}])',
            );
          }
        }),
      );
    });
  }

  cb.Method _createFromJsonStaticMethod(Class value, List<Class> classes) {
    return cb.Method((cb.MethodBuilder methodBuilder) {
      methodBuilder.name = 'fromJson';
      methodBuilder.static = true;
      methodBuilder.requiredParameters.add(
        cb.Parameter((cb.ParameterBuilder parameterBuilder) {
          parameterBuilder.name = '? json';
          parameterBuilder.type = cb.TypeReference(
            (cb.TypeReferenceBuilder b) => b
              ..symbol = 'Map'
              ..types.addAll([cb.refer('String'), cb.refer('dynamic')]),
          );
        }),
      );
      methodBuilder.returns = cb.Reference('${value.name}?');

      if (value.group == Group.classes) {
        final List<String> inheritedClasses = classes
            .where((Class c) => c.parent == value.name)
            .map((Class e) => '/// [${e.name}]')
            .toList()
          ..sort();

        methodBuilder.docs.add('/// Inherited by:');
        methodBuilder.docs.add(inheritedClasses.join('\n'));
      }
      methodBuilder.body = cb.Block((cb.BlockBuilder b) {
        b.statements.addAll([
          const cb.Code(
            '''
            if (json == null) {
              return null;
            }
            
            ''',
          )
        ]);

        if (value.group == Group.classes) {
          b.statements.addAll([
            const cb.Code(
              '''
            switch(json['@type']) {
            ''',
            )
          ]);
          b.statements.addAll(
            classes.where((Class c) => c.parent == value.name).map(
                  (Class e) => cb.Code(
                    '''
      case ${e.name}.constructor:
        return ${e.name}.fromJson(json);''',
                  ),
                ),
          );
          b.statements.addAll([
            const cb.Code(
              '''
            default:
              return null;
              }''',
            )
          ]);
        } else if (value.group == Group.objects) {
          final Map<String, cb.Reference> initializers = Map.fromEntries(
            value.variables.map(
              (Variable variable) {
                final bool isLast = value.variables.length == 1;
                return MapEntry(
                  variable.name.toVariableName(),
                  cb.refer(
                    '${_createInitializer(variable)}${isLast ? ',' : ''}',
                  ),
                );
              },
            ),
          );

          final bool canBeReturnByFunction = _canBeReturnByFunction(value.name);
          b.statements.addAll([
            cb.Code(
              "return ${value.variables.isEmpty && !canBeReturnByFunction ? 'const' : ''}",
            ),
            // ignore: invalid_use_of_visible_for_testing_member
            cb.ToCodeExpression(
              cb.refer(value.name).newInstance(<cb.Expression>[], initializers),
            ),
            const cb.Code(';')
          ]);
        }
      });
    });
  }

  bool _canBeReturnByFunction(String className) {
    if (className == 'TdError') {
      return true;
    }

    return classes
        .where((Class element) => element.group == Group.functions)
        .any((Class element) {
      return element.returnType == className;
    });
  }

  String _createInitializer(
    Variable variable, [
    String? overrideJsonKey,
  ]) {
    if (variable.type.isDartType) {
      if (variable.type.rawType == 'int64') {
        return "int.tryParse(json['${variable.name}']) ?? 0";
      }

      if (overrideJsonKey != null) {
        return overrideJsonKey;
      } else {
        switch (variable.type.rawType) {
          case 'int32':
          case 'int53':
          case 'int64':
            {
              return "json['${variable.name}'] as int${variable.isNullable ? '?' : ''}";
            }
          case 'double':
            {
              return "(json['${variable.name}'] as num)${variable.isNullable ? '?' : ''}.toDouble()";
            }
          case 'Bool':
            {
              return "json['${variable.name}'] as bool${variable.isNullable ? '?' : ''}";
            }
          case 'bytes':
          case 'String':
          case 'string':
            {
              return "json['${variable.name}'] as String${variable.isNullable ? '?' : ''}";
            }
        }
        return "json['${variable.name}']";
      }
    } else if (variable.type.isListType) {
      final String genericType = variable.type.type.substring(
        variable.type.type.indexOf('<') + 1,
        variable.type.type.lastIndexOf('>'),
      );

      final Variable genericVariable = Variable(
        name: genericType,
        type: VariableType.fromRawType(rawType: genericType),
        description: '',
        isNullable: false,
      );

      final List<String> list = <String>[
        "List<$genericType>.from(((json['${variable.name}'] as List<dynamic>?) ?? <dynamic>[]).map((item) => "
      ];

      list.add(_createInitializer(genericVariable, 'item'));
      list.add(').toList())');
      return list.join();
    }
    if (overrideJsonKey != null) {
      return '${variable.type}.fromJson($overrideJsonKey)';
    }
    return "${variable.type}.fromJson(json['${variable.name}'] as Map<String, dynamic>?)${!variable.isNullable ? '!' : ''}";
  }

  String _createVariableToJson(
    Group group,
    Variable variable, [
    String? overrideVariableName,
  ]) {
    if (variable.type.isDartType) {
      if (overrideVariableName != null) {
        return overrideVariableName;
      }
      if (group != Group.functions && variable.type.rawType == 'int64') {
        return '${variable.name.toVariableName()}.toString()';
      } else {
        return variable.name.toVariableName();
      }
    } else if (variable.type.isListType) {
      final String genericType = variable.type.type.substring(
        variable.type.type.indexOf('<') + 1,
        variable.type.type.lastIndexOf('>'),
      );

      final Variable genericVariable = Variable(
        name: genericType,
        type: VariableType.fromRawType(rawType: genericType),
        description: '',
        isNullable: false,
      );

      final List<String> list = <String>[
        "${overrideVariableName ?? variable.name.toVariableName()}${variable.isNullable ? '?' : ''}.map((item) => "
      ];

      list.add(_createVariableToJson(group, genericVariable, 'item'));
      list.add(').toList()');
      return list.join();
    }
    if (overrideVariableName != null) {
      return '$overrideVariableName.toJson()';
    }
    return "${variable.name.toVariableName()}${variable.isNullable ? '?' : ''}.toJson()";
  }

  String getPathOf(Class value) {
    if (value.group == Group.functions) {
      return functionsDir.path;
    }
    return objectsDir.path;
  }

  String getGroupPath(Group group) {
    if (group == Group.functions) {
      return 'functions';
    }

    return 'objects';
  }

  String snakeCase(String string) {
    string = string.replaceAllMapped(
      RegExp(r'(.)([A-Z][a-z]+)'),
      (Match match) => match
          .groups(List.generate(match.groupCount, (int index) => index + 1))
          .join('_'),
    );
    string = string.replaceAllMapped(
      RegExp(r'([a-z0-9])([A-Z])'),
      (Match match) => match
          .groups(List.generate(match.groupCount, (int index) => index + 1))
          .join('_'),
    );
    return string.toLowerCase();
  }
}

extension StringExtension on String {
  String toVariableName() => camelCase().lowerFirstChar();

  List<String> resolveDoc() {
    final List<String> lines = <String>[];

    final List<String> split = this.split(' ');

    String currentLine = '///';

    for (final String word in split) {
      final String tempLine = '$currentLine $word';
      if (tempLine.length > 78) {
        lines.add(currentLine);
        currentLine = '/// $word';
      } else {
        currentLine = tempLine;
      }
    }
    if (currentLine != '///') {
      lines.add(currentLine);
    }
    return lines;
  }
}

extension _VariableExtension on Variable {
  List<String> resolveFieldDoc() {
    return description
            ?.replaceFirst(name, '[${name.toVariableName()}]')
            .resolveDoc() ??
        [];
  }
}
