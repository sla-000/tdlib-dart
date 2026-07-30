// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the emoji status of a chat. Use
/// chatBoostLevelFeatures.can_set_emoji_status to check whether an emoji
/// status can be set. Requires can_change_info administrator right
/// Returns [Ok]
@immutable
class SetChatEmojiStatus extends TdFunction {
  const SetChatEmojiStatus({
    required this.chatId,
    this.emojiStatus,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [emojiStatus] New emoji status; pass null to remove emoji status
  final EmojiStatus? emojiStatus;

  static const String constructor = 'setChatEmojiStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'emoji_status': emojiStatus?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetChatEmojiStatus &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.emojiStatus, emojiStatus));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(emojiStatus)
      ]);
}
