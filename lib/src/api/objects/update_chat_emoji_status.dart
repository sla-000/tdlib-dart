// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Chat emoji status has changed
@immutable
class UpdateChatEmojiStatus extends Update {
  const UpdateChatEmojiStatus({
    required this.chatId,
    this.emojiStatus,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [emojiStatus] The new chat emoji status; may be null
  final EmojiStatus? emojiStatus;

  static const String constructor = 'updateChatEmojiStatus';

  static UpdateChatEmojiStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatEmojiStatus(
      chatId: json['chat_id'] as int,
      emojiStatus:
          EmojiStatus.fromJson(json['emoji_status'] as Map<String, dynamic>?),
    );
  }

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
          other is UpdateChatEmojiStatus &&
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
