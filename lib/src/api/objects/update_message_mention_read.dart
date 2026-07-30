// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with an unread mention was read
@immutable
class UpdateMessageMentionRead extends Update {
  const UpdateMessageMentionRead({
    required this.chatId,
    required this.messageId,
    required this.unreadMentionCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [unreadMentionCount] The new number of unread mention messages left in the
  /// chat
  final int unreadMentionCount;

  static const String constructor = 'updateMessageMentionRead';

  static UpdateMessageMentionRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageMentionRead(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
      unreadMentionCount: json['unread_mention_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'unread_mention_count': unreadMentionCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateMessageMentionRead &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.unreadMentionCount, unreadMentionCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(unreadMentionCount)
      ]);
}
