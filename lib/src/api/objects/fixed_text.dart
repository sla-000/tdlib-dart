import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
