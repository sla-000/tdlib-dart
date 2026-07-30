// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichTextDiff &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.oldText, oldText));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(oldText)
      ]);
}
