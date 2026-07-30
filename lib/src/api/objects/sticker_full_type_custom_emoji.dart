// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The sticker is a custom emoji to be used inside message text and caption.
/// Currently, only Telegram Premium users can use custom emoji
@immutable
class StickerFullTypeCustomEmoji extends StickerFullType {
  const StickerFullTypeCustomEmoji({
    required this.customEmojiId,
    required this.needsRepainting,
  });

  /// [customEmojiId] Identifier of the custom emoji
  final int customEmojiId;

  /// [needsRepainting] True, if the sticker must be repainted to a text color
  /// in messages, the color of the Telegram Premium badge in emoji status,
  /// white color on chat photos, or another appropriate color in other places
  final bool needsRepainting;

  static const String constructor = 'stickerFullTypeCustomEmoji';

  static StickerFullTypeCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerFullTypeCustomEmoji(
      customEmojiId: int.tryParse(json['custom_emoji_id']) ?? 0,
      needsRepainting: json['needs_repainting'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'custom_emoji_id': customEmojiId.toString(),
        'needs_repainting': needsRepainting,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StickerFullTypeCustomEmoji &&
          const DeepCollectionEquality()
              .equals(other.customEmojiId, customEmojiId) &&
          const DeepCollectionEquality()
              .equals(other.needsRepainting, needsRepainting));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(customEmojiId),
        const DeepCollectionEquality().hash(needsRepainting)
      ]);
}
