import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
