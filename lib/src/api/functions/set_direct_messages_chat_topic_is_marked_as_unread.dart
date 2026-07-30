// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the marked as unread state of the topic in a channel direct
/// messages chat administered by the current user
/// Returns [Ok]
@immutable
class SetDirectMessagesChatTopicIsMarkedAsUnread extends TdFunction {
  const SetDirectMessagesChatTopicIsMarkedAsUnread({
    required this.chatId,
    required this.topicId,
    required this.isMarkedAsUnread,
  });

  /// [chatId] Chat identifier of the channel direct messages chat
  final int chatId;

  /// [topicId] Topic identifier
  final int topicId;

  /// [isMarkedAsUnread] New value of is_marked_as_unread
  final bool isMarkedAsUnread;

  static const String constructor =
      'setDirectMessagesChatTopicIsMarkedAsUnread';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId,
        'is_marked_as_unread': isMarkedAsUnread,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetDirectMessagesChatTopicIsMarkedAsUnread &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality()
              .equals(other.isMarkedAsUnread, isMarkedAsUnread));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(isMarkedAsUnread)
      ]);
}
