// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A text fixed using fixTextWithAi
@immutable
class FixedText extends TdObject {
  const FixedText({
    required this.text,
    required this.diffText,
  });

  /// [text] The resulting text
  final FormattedText text;

  /// [diffText] Changes made to the original text
  final DiffText diffText;

  static const String constructor = 'fixedText';

  static FixedText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FixedText(
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      diffText: DiffText.fromJson(json['diff_text'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'diff_text': diffText.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is FixedText &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.diffText, diffText));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(diffText)
      ]);
}
