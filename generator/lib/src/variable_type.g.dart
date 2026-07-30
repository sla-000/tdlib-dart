// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariableType _$VariableTypeFromJson(Map<String, dynamic> json) => VariableType(
      type: json['type'] as String,
      isDartType: json['isDartType'] as bool,
      rawType: json['rawType'] as String,
      isListType: json['isListType'] as bool,
    );

Map<String, dynamic> _$VariableTypeToJson(VariableType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'isDartType': instance.isDartType,
      'isListType': instance.isListType,
      'rawType': instance.rawType,
    };
