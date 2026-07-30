// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a topic in a forum supergroup chat or a chat
/// with a bot with topics
/// Returns [ForumTopic]
@immutable
class GetForumTopic extends TdFunction {
  const GetForumTopic({
    required this.chatId,
    required this.forumTopicId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [forumTopicId] Forum topic identifier
  final int forumTopicId;

  static const String constructor = 'getForumTopic';

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
          other is GetForumTopic &&
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
