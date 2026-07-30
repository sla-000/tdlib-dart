// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns approximate 1-based position of a message among messages, which
/// can be found by the specified filter in the chat and topic. Cannot be used
/// in secret chats
/// Returns [Count]
@immutable
class GetChatMessagePosition extends TdFunction {
  const GetChatMessagePosition({
    required this.chatId,
    this.topicId,
    required this.filter,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat in which to find message position
  final int chatId;

  /// [topicId] Pass topic identifier to get position among messages only in
  /// specific topic; pass null to get position among all chat messages; message
  /// threads aren't supported
  final MessageTopic? topicId;

  /// [filter] Filter for message content; searchMessagesFilterEmpty,
  /// searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction,
  /// searchMessagesFilterUnreadPollVote, and searchMessagesFilterFailedToSend
  /// are unsupported in this function
  final SearchMessagesFilter filter;

  /// [messageId] Message identifier
  final int messageId;

  static const String constructor = 'getChatMessagePosition';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId?.toJson(),
        'filter': filter.toJson(),
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatMessagePosition &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality().equals(other.filter, filter) &&
          const DeepCollectionEquality().equals(other.messageId, messageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(filter),
        const DeepCollectionEquality().hash(messageId)
      ]);
}
