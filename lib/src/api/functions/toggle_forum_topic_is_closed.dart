// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Toggles whether a topic is closed in a forum supergroup chat; requires
/// can_manage_topics administrator right in the supergroup unless the user is
/// creator of the topic
/// Returns [Ok]
@immutable
class ToggleForumTopicIsClosed extends TdFunction {
  const ToggleForumTopicIsClosed({
    required this.chatId,
    required this.forumTopicId,
    required this.isClosed,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [forumTopicId] Forum topic identifier
  final int forumTopicId;

  /// [isClosed] Pass true to close the topic; pass false to reopen it
  final bool isClosed;

  static const String constructor = 'toggleForumTopicIsClosed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'forum_topic_id': forumTopicId,
        'is_closed': isClosed,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleForumTopicIsClosed &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.forumTopicId, forumTopicId) &&
          const DeepCollectionEquality().equals(other.isClosed, isClosed));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(forumTopicId),
        const DeepCollectionEquality().hash(isClosed)
      ]);
}
