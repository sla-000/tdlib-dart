import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A rich text that serves as a mention of a user
@immutable
class RichTextMentionName extends RichText {
  const RichTextMentionName({
    required this.text,
    required this.userId,
  });

  /// [text] Text
  final RichText text;

  /// [userId] Identifier of the mentioned user
  final int userId;

  static const String constructor = 'richTextMentionName';

  static RichTextMentionName? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextMentionName(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      userId: json['user_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
