// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Unread votes were added or removed from a poll message
@immutable
class UpdateMessageContainsUnreadPollVotes extends Update {
  const UpdateMessageContainsUnreadPollVotes({
    required this.chatId,
    required this.messageId,
    required this.containsUnreadPollVotes,
    required this.unreadPollVoteCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [containsUnreadPollVotes] True, if the message is a poll message with
  /// unread votes
  final bool containsUnreadPollVotes;

  /// [unreadPollVoteCount] The new number of messages with unread poll votes in
  /// the chat
  final int unreadPollVoteCount;

  static const String constructor = 'updateMessageContainsUnreadPollVotes';

  static UpdateMessageContainsUnreadPollVotes? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageContainsUnreadPollVotes(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      containsUnreadPollVotes:
          (json['contains_unread_poll_votes'] as bool?) ?? false,
      unreadPollVoteCount: (json['unread_poll_vote_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'contains_unread_poll_votes': containsUnreadPollVotes,
        'unread_poll_vote_count': unreadPollVoteCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateMessageContainsUnreadPollVotes &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.containsUnreadPollVotes, containsUnreadPollVotes) &&
          const DeepCollectionEquality()
              .equals(other.unreadPollVoteCount, unreadPollVoteCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(containsUnreadPollVotes),
        const DeepCollectionEquality().hash(unreadPollVoteCount)
      ]);
}
