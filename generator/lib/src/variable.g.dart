// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variable _$VariableFromJson(Map<String, dynamic> json) => Variable(
      name: json['name'] as String,
      type: VariableType.fromJson(json['type'] as Map<String, dynamic>),
      description: json['description'] as String?,
      isNullable: json['isNullable'] as bool,
    );

Map<String, dynamic> _$VariableToJson(Variable instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
      'isNullable': instance.isNullable,
    };
