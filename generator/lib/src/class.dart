import 'package:json_annotation/json_annotation.dart';

import 'variable.dart';

import 'group.dart';

part 'class.g.dart';

@JsonSerializable()
class Class {
  final String name;
  final String description;
  final String parent;
  final String? returnType;
  final Group group;
  final List<Variable> variables;
  final String constructor;

  Class({
    required this.name,
    required this.parent,
    required this.group,
    required this.returnType,
    required this.constructor,
    required this.variables,
    required this.description,
  });

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);

  Map<String, dynamic> toJson() => _$ClassToJson(this);
}

extension ClassExtensions on Class {
  bool isAbstract() => group == Group.classes;
}
