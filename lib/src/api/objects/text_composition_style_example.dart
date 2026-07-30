// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains an example of text composition style usage
@immutable
class TextCompositionStyleExample extends TdObject {
  const TextCompositionStyleExample({
    required this.sourceText,
    required this.resultText,
  });

  /// [sourceText] Source text
  final FormattedText sourceText;

  /// [resultText] The text after the style was applied to the source text
  final FormattedText resultText;

  static const String constructor = 'textCompositionStyleExample';

  static TextCompositionStyleExample? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextCompositionStyleExample(
      sourceText:
          FormattedText.fromJson(json['source_text'] as Map<String, dynamic>?)!,
      resultText:
          FormattedText.fromJson(json['result_text'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'source_text': sourceText.toJson(),
        'result_text': resultText.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TextCompositionStyleExample &&
          const DeepCollectionEquality().equals(other.sourceText, sourceText) &&
          const DeepCollectionEquality().equals(other.resultText, resultText));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(sourceText),
        const DeepCollectionEquality().hash(resultText)
      ]);
}
