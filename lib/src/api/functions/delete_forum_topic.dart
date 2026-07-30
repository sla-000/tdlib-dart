// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes all messages from a topic in a forum supergroup chat or a chat
/// with a bot with topics; requires can_delete_messages administrator right
/// in the supergroup unless the user is creator of the topic, the topic has
/// no messages from other users and has at most 11 messages
/// Returns [Ok]
@immutable
class DeleteForumTopic extends TdFunction {
  const DeleteForumTopic({
    required this.chatId,
    required this.forumTopicId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [forumTopicId] Forum topic identifier
  final int forumTopicId;

  static const String constructor = 'deleteForumTopic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'forum_topic_id': forumTopicId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteForumTopic &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.forumTopicId, forumTopicId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(forumTopicId)
      ]);
}
