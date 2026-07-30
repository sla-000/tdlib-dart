import 'dart:io';

import 'package:collection/collection.dart';
import 'class.dart';
import 'group.dart';
import 'string_extensions.dart';
import 'variable.dart';
import 'variable_type.dart';

class Parser {
  final RegExp sectionRegx = RegExp(r'---(\w+)---');
  final RegExp classRegx = RegExp(r'^//@class (\w+) @description (.*)');
  final RegExp docsRegx = RegExp(
      r'//((-)|@)(description)?([\w -.,:;={}\?\/\(\)`~|[\]"]+)(@?)(.*)?');
  final RegExp fieldsRegx = RegExp(r'^(\w+) (.*)?= (\w+);$');

  List<Class> parse() {
    const String schemePath = 'data/td_api.tl';
    final List<String> readAsLinesSync = File(schemePath).readAsLinesSync();

    final List<Class> classes = <Class>[];
    final List<String> variablesDescriptions = <String>[];

    String classDescription = '';

    String section = 'types';

    for (final String line in readAsLinesSync.skip(13)) {
      if (sectionRegx.hasMatch(line)) {
        section = sectionRegx.firstMatch(line)!.group(1)!;
        continue;
      }

      if (classRegx.hasMatch(line)) {
        final RegExpMatch classData = classRegx.firstMatch(line)!;
        final String className = classData.group(1)!;
        final String classDescription = classData.group(2)!;

        classes.add(
          Class(
            constructor: className.toConstructor(),
            group: fixSection('classes'),
            parent: 'TdObject',
            name: className,
            returnType: null,
            description: classDescription,
            variables: <Variable>[],
          ),
        );

        continue;
      }

      // check documentation line.
      if (docsRegx.hasMatch(line)) {
        final RegExpMatch? docData = docsRegx.firstMatch(line);

        // if line start with '//-', this line is continuation of last line.
        final bool continuation = (docData!.group(2) == null) ? false : true;

        // starting with '//@description' determines a description line.
        final bool isDescription = docData.group(3) == 'description';

        // rest of information from this line, after description state.
        final String docs = docData.group(4)!.trim();

        // variables description start with '@VARIABLE_NAME', @ is a sign of extra descriptions.
        final bool hasExtra = docData.group(5) == '@' ? true : false;

        // rest of information from this line, after sign of extra descriptions.
        final String? extraData = docData.group(6);

        if (isDescription) {
          classDescription = docs;
        } else if (continuation) {
          // if this line is continuation of last line, must be added to last variable description or class description
          // always class description is the first thing that defined. so if there are variables information so class description is finished.
          if (variablesDescriptions.isNotEmpty) {
            variablesDescriptions[variablesDescriptions.length - 1] += ' $docs';
          } else {
            classDescription += ' $docs';
          }
        } else {
          variablesDescriptions.add(docs);
        }
        if (hasExtra) {
          // where the '@' is the variables descriptions sign, splitting extra information by this sign separates descriptions.
          variablesDescriptions.addAll(extraData!.split('@'));
        }
        continue;
      }

      // check for the last line of
      if (fieldsRegx.hasMatch(line)) {
        final RegExpMatch? classData = fieldsRegx.firstMatch(line);

        String resolveParentType(
          Group group,
          String className,
          String classType,
        ) {
          if (group == Group.functions) {
            return 'TdFunction';
          }
          if (group == Group.classes) {
            return 'TdObject';
          }
          if (className.toLowerCase() == classType.toLowerCase()) {
            return 'TdObject';
          }
          return classType;
        }

        final String className = classData!.group(1)!;
        final String? classArgs = classData.group(2);
        final Group group = fixSection(section);
        final String returnType = classData.group(3)!;
        final String parent = resolveParentType(group, className, returnType);
        final Map<String, String> args = (classArgs == null)
            ? <String, String>{}
            // ignore: prefer_for_elements_to_map_fromIterable
            : Map<String, String>.fromIterable(
                classArgs.trim().split(' '),
                key: (var arg) => arg.split(':')[0],
                value: (var arg) => arg.split(':')[1],
              );
        final List<Variable> variables = args.keys.map((String variableName) {
          final String? description = variablesDescriptions.firstWhereOrNull(
            (String element) =>
                element.startsWith('${variableName} ') ||
                element.startsWith('param_$variableName '),
          );
          return Variable(
            isNullable: _resolveExceptionNotNullVar(className, variableName) ??
                _resolveExceptionNullableVar(className, variableName) ??
                _resolveNullableVar(description),
            name: variableName,
            type: VariableType.fromRawType(rawType: args[variableName]!),
            description: description,
          );
        }).toList();
        final String name = className.upperFirstChar();
        final Class classInfo = Class(
          returnType: group == Group.functions ? returnType : null,
          group: group,
          constructor: name.toConstructor(),
          name: name == 'Error' ? 'TdError' : name,
          parent: parent,
          variables: variables,
          description: classDescription,
        );

        classDescription = '';
        variablesDescriptions.clear();
        classes.add(classInfo);
      }
    }
    return classes;
  }

  static final Map<String, List<String>> _exceptionNullableVars =
      <String, List<String>>{};

  static final Map<String, List<String>> _exceptionNotNullVars =
      <String, List<String>>{};

  ///
  /// [className] example 'tdlibParameters'
  /// [variableName] example 'system_language_code'
  bool? _resolveExceptionNullableVar(String className, String variableName) =>
      _checkContainsVar(className, variableName, _exceptionNullableVars);

  bool? _resolveExceptionNotNullVar(String className, String variableName) {
    final bool? result =
        _checkContainsVar(className, variableName, _exceptionNotNullVars);
    if (result != null) {
      return !result;
    }
    return result;
  }

  bool? _checkContainsVar(
    String className,
    String variableName,
    Map<String, List<String>> source,
  ) {
    final List<String>? classFields = source[className];
    final String? field = classFields
        ?.firstWhereOrNull((String element) => element == variableName);
    if (field != null) {
      return true;
    }
    return null;
  }

  bool _resolveNullableVar(String? description) {
    if (description == null) {
      return false;
    }
    final List<String> nullSubstrings = <String>[
      'or null',
      'may be null',
      'if not null',
      'pass null',
      'for bots only',
      'optional',
    ];
    return nullSubstrings.any(
      (String element) =>
          description.toLowerCase().contains(element.toLowerCase()),
    );
  }

  Group fixSection(String value) {
    if (value == 'types') {
      return Group.objects;
    } else if (value == 'classes') {
      return Group.classes;
    }

    return Group.functions;
  }
}
