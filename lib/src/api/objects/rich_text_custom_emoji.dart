import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A custom emoji
@immutable
class RichTextCustomEmoji extends RichText {
  const RichTextCustomEmoji({
    required this.customEmojiId,
    required this.alternativeText,
  });

  /// [customEmojiId] Unique identifier of the custom emoji
  final int customEmojiId;

  /// [alternativeText] Alternative text for the custom emoji
  final String alternativeText;

  static const String constructor = 'richTextCustomEmoji';

  static RichTextCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextCustomEmoji(
      customEmojiId: int.tryParse(json['custom_emoji_id']) ?? 0,
      alternativeText: json['alternative_text'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'custom_emoji_id': customEmojiId.toString(),
        'alternative_text': alternativeText,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
