import 'package:json_annotation/json_annotation.dart';

import 'variable_type.dart';

part 'variable.g.dart';

@JsonSerializable()
class Variable {
  final String name;
  final VariableType type;
  final String? description;
  final bool isNullable;

  Variable(
      {required this.name,
      required this.type,
      required this.description,
      required this.isNullable});

  factory Variable.fromJson(Map<String, dynamic> json) =>
      _$VariableFromJson(json);

  Map<String, dynamic> toJson() => _$VariableToJson(this);
}
