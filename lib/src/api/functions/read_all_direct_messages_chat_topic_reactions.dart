// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes all unread reactions in the topic in a channel direct messages
/// chat administered by the current user
/// Returns [Ok]
@immutable
class ReadAllDirectMessagesChatTopicReactions extends TdFunction {
  const ReadAllDirectMessagesChatTopicReactions({
    required this.chatId,
    required this.topicId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [topicId] Topic identifier
  final int topicId;

  static const String constructor = 'readAllDirectMessagesChatTopicReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReadAllDirectMessagesChatTopicReactions &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId)
      ]);
}
