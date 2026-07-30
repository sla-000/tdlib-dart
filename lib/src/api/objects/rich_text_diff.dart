import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A rich text replacing another rich text; not supported in inputRichMessage
@immutable
class RichTextDiff extends RichText {
  const RichTextDiff({
    required this.text,
    required this.oldText,
  });

  /// [text] Text
  final RichText text;

  /// [oldText] The old text
  final RichText oldText;

  static const String constructor = 'richTextDiff';

  static RichTextDiff? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextDiff(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      oldText: RichText.fromJson(json['old_text'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'old_text': oldText.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
