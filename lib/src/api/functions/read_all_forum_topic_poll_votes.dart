// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Marks all poll votes in a topic in a forum supergroup chat as read
/// Returns [Ok]
@immutable
class ReadAllForumTopicPollVotes extends TdFunction {
  const ReadAllForumTopicPollVotes({
    required this.chatId,
    required this.forumTopicId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [forumTopicId] Forum topic identifier in which poll votes are marked as
  /// read
  final int forumTopicId;

  static const String constructor = 'readAllForumTopicPollVotes';

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
          other is ReadAllForumTopicPollVotes &&
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
