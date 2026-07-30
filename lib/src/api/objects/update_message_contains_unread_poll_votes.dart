import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
      containsUnreadPollVotes: json['contains_unread_poll_votes'] as bool,
      unreadPollVoteCount: json['unread_poll_vote_count'] as int,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
