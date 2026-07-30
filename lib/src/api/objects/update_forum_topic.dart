// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Information about a topic in a forum chat was changed
@immutable
class UpdateForumTopic extends Update {
  const UpdateForumTopic({
    required this.chatId,
    required this.forumTopicId,
    required this.isPinned,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.unreadMentionCount,
    required this.unreadReactionCount,
    required this.unreadPollVoteCount,
    required this.notificationSettings,
    this.draftMessage,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [forumTopicId] Forum topic identifier of the topic
  final int forumTopicId;

  /// [isPinned] True, if the topic is pinned in the topic list
  final bool isPinned;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing message
  final int lastReadOutboxMessageId;

  /// [unreadMentionCount] Number of unread messages with a mention/reply in the
  /// topic
  final int unreadMentionCount;

  /// [unreadReactionCount] Number of messages with unread reactions in the
  /// topic
  final int unreadReactionCount;

  /// [unreadPollVoteCount] Number of messages with unread poll votes in the
  /// topic
  final int unreadPollVoteCount;

  /// [notificationSettings] Notification settings for the topic
  final ChatNotificationSettings notificationSettings;

  /// [draftMessage] A draft of a message in the topic; may be null if none
  final DraftMessage? draftMessage;

  static const String constructor = 'updateForumTopic';

  static UpdateForumTopic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateForumTopic(
      chatId: json['chat_id'] as int,
      forumTopicId: json['forum_topic_id'] as int,
      isPinned: json['is_pinned'] as bool,
      lastReadInboxMessageId: json['last_read_inbox_message_id'] as int,
      lastReadOutboxMessageId: json['last_read_outbox_message_id'] as int,
      unreadMentionCount: json['unread_mention_count'] as int,
      unreadReactionCount: json['unread_reaction_count'] as int,
      unreadPollVoteCount: json['unread_poll_vote_count'] as int,
      notificationSettings: ChatNotificationSettings.fromJson(
          json['notification_settings'] as Map<String, dynamic>?)!,
      draftMessage:
          DraftMessage.fromJson(json['draft_message'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'forum_topic_id': forumTopicId,
        'is_pinned': isPinned,
        'last_read_inbox_message_id': lastReadInboxMessageId,
        'last_read_outbox_message_id': lastReadOutboxMessageId,
        'unread_mention_count': unreadMentionCount,
        'unread_reaction_count': unreadReactionCount,
        'unread_poll_vote_count': unreadPollVoteCount,
        'notification_settings': notificationSettings.toJson(),
        'draft_message': draftMessage?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateForumTopic &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.forumTopicId, forumTopicId) &&
          const DeepCollectionEquality().equals(other.isPinned, isPinned) &&
          const DeepCollectionEquality()
              .equals(other.lastReadInboxMessageId, lastReadInboxMessageId) &&
          const DeepCollectionEquality()
              .equals(other.lastReadOutboxMessageId, lastReadOutboxMessageId) &&
          const DeepCollectionEquality()
              .equals(other.unreadMentionCount, unreadMentionCount) &&
          const DeepCollectionEquality()
              .equals(other.unreadReactionCount, unreadReactionCount) &&
          const DeepCollectionEquality()
              .equals(other.unreadPollVoteCount, unreadPollVoteCount) &&
          const DeepCollectionEquality()
              .equals(other.notificationSettings, notificationSettings) &&
          const DeepCollectionEquality()
              .equals(other.draftMessage, draftMessage));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(forumTopicId),
        const DeepCollectionEquality().hash(isPinned),
        const DeepCollectionEquality().hash(lastReadInboxMessageId),
        const DeepCollectionEquality().hash(lastReadOutboxMessageId),
        const DeepCollectionEquality().hash(unreadMentionCount),
        const DeepCollectionEquality().hash(unreadReactionCount),
        const DeepCollectionEquality().hash(unreadPollVoteCount),
        const DeepCollectionEquality().hash(notificationSettings),
        const DeepCollectionEquality().hash(draftMessage)
      ]);
}
