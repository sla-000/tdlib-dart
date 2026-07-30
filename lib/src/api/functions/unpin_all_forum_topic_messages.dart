// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes all pinned messages from a topic in a forum supergroup chat or a
/// chat with a bot with topics; requires can_pin_messages member right in the
/// supergroup
/// Returns [Ok]
@immutable
class UnpinAllForumTopicMessages extends TdFunction {
  const UnpinAllForumTopicMessages({
    required this.chatId,
    required this.forumTopicId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [forumTopicId] Forum topic identifier in which messages will be unpinned
  final int forumTopicId;

  static const String constructor = 'unpinAllForumTopicMessages';

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
          other is UnpinAllForumTopicMessages &&
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
