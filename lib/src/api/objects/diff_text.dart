// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A text with some changes highlighted
@immutable
class DiffText extends TdObject {
  const DiffText({
    required this.text,
    required this.entities,
  });

  /// [text] The text
  final String text;

  /// [entities] Entities describing changes in the text. Entities don't
  /// mutually intersect with each other
  final List<DiffEntity> entities;

  static const String constructor = 'diffText';

  static DiffText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DiffText(
      text: json['text'] as String,
      entities: List<DiffEntity>.from(
          ((json['entities'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => DiffEntity.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'entities': entities.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DiffText &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.entities, entities));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(entities)
      ]);
}
