import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat unread_poll_vote_count has changed
@immutable
class UpdateChatUnreadPollVoteCount extends Update {
  const UpdateChatUnreadPollVoteCount({
    required this.chatId,
    required this.unreadPollVoteCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [unreadPollVoteCount] The number of messages with unread poll votes left
  /// in the chat
  final int unreadPollVoteCount;

  static const String constructor = 'updateChatUnreadPollVoteCount';

  static UpdateChatUnreadPollVoteCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatUnreadPollVoteCount(
      chatId: json['chat_id'] as int,
      unreadPollVoteCount: json['unread_poll_vote_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'unread_poll_vote_count': unreadPollVoteCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
