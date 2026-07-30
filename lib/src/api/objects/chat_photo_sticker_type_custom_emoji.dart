// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Information about the custom emoji, which was used to create the chat
/// photo
@immutable
class ChatPhotoStickerTypeCustomEmoji extends ChatPhotoStickerType {
  const ChatPhotoStickerTypeCustomEmoji({
    required this.customEmojiId,
  });

  /// [customEmojiId] Identifier of the custom emoji
  final int customEmojiId;

  static const String constructor = 'chatPhotoStickerTypeCustomEmoji';

  static ChatPhotoStickerTypeCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPhotoStickerTypeCustomEmoji(
      customEmojiId: (json['custom_emoji_id'] is int
              ? json['custom_emoji_id'] as int
              : int.tryParse(json['custom_emoji_id']?.toString() ?? '')) ??
          0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'custom_emoji_id': customEmojiId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatPhotoStickerTypeCustomEmoji &&
          const DeepCollectionEquality()
              .equals(other.customEmojiId, customEmojiId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(customEmojiId)]);
}
