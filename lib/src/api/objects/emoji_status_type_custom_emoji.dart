// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A custom emoji set as emoji status
@immutable
class EmojiStatusTypeCustomEmoji extends EmojiStatusType {
  const EmojiStatusTypeCustomEmoji({
    required this.customEmojiId,
  });

  /// [customEmojiId] Identifier of the custom emoji in stickerFormatTgs format
  final int customEmojiId;

  static const String constructor = 'emojiStatusTypeCustomEmoji';

  static EmojiStatusTypeCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiStatusTypeCustomEmoji(
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
          other is EmojiStatusTypeCustomEmoji &&
          const DeepCollectionEquality()
              .equals(other.customEmojiId, customEmojiId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(customEmojiId)]);
}
