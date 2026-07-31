// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The list of unread reactions added to a message was changed
@immutable
class UpdateMessageUnreadReactions extends Update {
  const UpdateMessageUnreadReactions({
    required this.chatId,
    required this.messageId,
    required this.unreadReactions,
    required this.unreadReactionCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [unreadReactions] The new list of unread reactions
  final List<UnreadReaction> unreadReactions;

  /// [unreadReactionCount] The new number of messages with unread reactions
  /// left in the chat
  final int unreadReactionCount;

  static const String constructor = 'updateMessageUnreadReactions';

  static UpdateMessageUnreadReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageUnreadReactions(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      unreadReactions: List<UnreadReaction>.from(((json['unread_reactions']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => UnreadReaction.fromJson(item as Map<String, dynamic>?))
          .toList()),
      unreadReactionCount: (json['unread_reaction_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'unread_reactions':
            unreadReactions.map((item) => item.toJson()).toList(),
        'unread_reaction_count': unreadReactionCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateMessageUnreadReactions &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.unreadReactions, unreadReactions) &&
          const DeepCollectionEquality()
              .equals(other.unreadReactionCount, unreadReactionCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(unreadReactions),
        const DeepCollectionEquality().hash(unreadReactionCount)
      ]);
}
