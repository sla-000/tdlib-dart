// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Class _$ClassFromJson(Map<String, dynamic> json) => Class(
      name: json['name'] as String,
      parent: json['parent'] as String,
      group: $enumDecode(_$GroupEnumMap, json['group']),
      returnType: json['returnType'] as String?,
      constructor: json['constructor'] as String,
      variables: (json['variables'] as List<dynamic>)
          .map((e) => Variable.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$ClassToJson(Class instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'parent': instance.parent,
      'returnType': instance.returnType,
      'group': _$GroupEnumMap[instance.group]!,
      'variables': instance.variables,
      'constructor': instance.constructor,
    };

const _$GroupEnumMap = {
  Group.classes: 'classes',
  Group.functions: 'functions',
  Group.objects: 'objects',
};
