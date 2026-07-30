// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a button to be shown above inline query results
@immutable
class InlineQueryResultsButton extends TdObject {
  const InlineQueryResultsButton({
    required this.text,
    required this.type,
  });

  /// [text] The text of the button
  final String text;

  /// [type] Type of the button
  final InlineQueryResultsButtonType type;

  static const String constructor = 'inlineQueryResultsButton';

  static InlineQueryResultsButton? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultsButton(
      text: json['text'] as String,
      type: InlineQueryResultsButtonType.fromJson(
          json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineQueryResultsButton &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(type)
      ]);
}
