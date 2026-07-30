// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A text with some entities
@immutable
class FormattedText extends TdObject {
  const FormattedText({
    required this.text,
    required this.entities,
  });

  /// [text] The text
  final String text;

  /// [entities] Entities contained in the text. Entities can be nested, but
  /// must not mutually intersect with each other. Pre, Code, PreCode, and
  /// DateTime entities can't contain other entities. BlockQuote entities can't
  /// contain other BlockQuote entities. Bold, Italic, Underline, Strikethrough,
  /// and Spoiler entities can contain and can be part of any other entities.
  /// All other entities can't contain each other
  final List<TextEntity> entities;

  static const String constructor = 'formattedText';

  static FormattedText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FormattedText(
      text: json['text'] as String,
      entities: List<TextEntity>.from(
          ((json['entities'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => TextEntity.fromJson(item))
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
          other is FormattedText &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.entities, entities));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(entities)
      ]);
}
