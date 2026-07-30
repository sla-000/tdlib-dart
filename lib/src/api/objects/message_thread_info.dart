// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a message thread
@immutable
class MessageThreadInfo extends TdObject {
  const MessageThreadInfo({
    required this.chatId,
    required this.messageThreadId,
    this.replyInfo,
    required this.unreadMessageCount,
    required this.messages,
    this.draftMessage,
  });

  /// [chatId] Identifier of the chat to which the message thread belongs
  final int chatId;

  /// [messageThreadId] Message thread identifier, unique within the chat
  final int messageThreadId;

  /// [replyInfo] Information about the message thread; may be null for forum
  /// topic threads
  final MessageReplyInfo? replyInfo;

  /// [unreadMessageCount] Approximate number of unread messages in the message
  /// thread
  final int unreadMessageCount;

  /// [messages] The messages from which the thread starts. The messages are
  /// returned in reverse chronological order (i.e., in order of decreasing
  /// message_id)
  final List<Message> messages;

  /// [draftMessage] A draft of a message in the message thread; may be null if
  /// none
  final DraftMessage? draftMessage;

  static const String constructor = 'messageThreadInfo';

  static MessageThreadInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageThreadInfo(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageThreadId: (json['message_thread_id'] as int?) ?? 0,
      replyInfo: MessageReplyInfo.fromJson(
          json['reply_info'] as Map<String, dynamic>?),
      unreadMessageCount: (json['unread_message_count'] as int?) ?? 0,
      messages: List<Message>.from(
          ((json['messages'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Message.fromJson(item as Map<String, dynamic>?))
              .toList()),
      draftMessage:
          DraftMessage.fromJson(json['draft_message'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_thread_id': messageThreadId,
        'reply_info': replyInfo?.toJson(),
        'unread_message_count': unreadMessageCount,
        'messages': messages.map((item) => item.toJson()).toList(),
        'draft_message': draftMessage?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageThreadInfo &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.messageThreadId, messageThreadId) &&
          const DeepCollectionEquality().equals(other.replyInfo, replyInfo) &&
          const DeepCollectionEquality()
              .equals(other.unreadMessageCount, unreadMessageCount) &&
          const DeepCollectionEquality().equals(other.messages, messages) &&
          const DeepCollectionEquality()
              .equals(other.draftMessage, draftMessage));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageThreadId),
        const DeepCollectionEquality().hash(replyInfo),
        const DeepCollectionEquality().hash(unreadMessageCount),
        const DeepCollectionEquality().hash(messages),
        const DeepCollectionEquality().hash(draftMessage)
      ]);
}
