// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes accent color and background custom emoji of a channel chat.
/// Requires can_change_info administrator right
/// Returns [Ok]
@immutable
class SetChatAccentColor extends TdFunction {
  const SetChatAccentColor({
    required this.chatId,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [accentColorId] Identifier of the accent color to use. The chat must have
  /// at least accentColor.min_channel_chat_boost_level boost level to pass the
  /// corresponding color
  final int accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the
  /// reply header and link preview background; 0 if none. Use
  /// chatBoostLevelFeatures.can_set_background_custom_emoji to check whether a
  /// custom emoji can be set
  final int backgroundCustomEmojiId;

  static const String constructor = 'setChatAccentColor';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'accent_color_id': accentColorId,
        'background_custom_emoji_id': backgroundCustomEmojiId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetChatAccentColor &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.accentColorId, accentColorId) &&
          const DeepCollectionEquality()
              .equals(other.backgroundCustomEmojiId, backgroundCustomEmojiId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(accentColorId),
        const DeepCollectionEquality().hash(backgroundCustomEmojiId)
      ]);
}
