// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the order of pinned topics in a forum supergroup chat or a chat
/// with a bot with topics; requires can_manage_topics administrator right in
/// the supergroup
/// Returns [Ok]
@immutable
class SetPinnedForumTopics extends TdFunction {
  const SetPinnedForumTopics({
    required this.chatId,
    required this.forumTopicIds,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [forumTopicIds] The new list of identifiers of the pinned forum topics
  final List<int> forumTopicIds;

  static const String constructor = 'setPinnedForumTopics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'forum_topic_ids': forumTopicIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetPinnedForumTopics &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.forumTopicIds, forumTopicIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(forumTopicIds)
      ]);
}
