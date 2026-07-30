// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Number of messages in a topic has changed; for Saved Messages and channel
/// direct messages chat topics only
@immutable
class UpdateTopicMessageCount extends Update {
  const UpdateTopicMessageCount({
    required this.chatId,
    required this.topicId,
    required this.messageCount,
  });

  /// [chatId] Identifier of the chat in topic of which the number of messages
  /// has changed
  final int chatId;

  /// [topicId] Identifier of the topic
  final MessageTopic topicId;

  /// [messageCount] Approximate number of messages in the topic
  final int messageCount;

  static const String constructor = 'updateTopicMessageCount';

  static UpdateTopicMessageCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTopicMessageCount(
      chatId: (json['chat_id'] as int?) ?? 0,
      topicId:
          MessageTopic.fromJson(json['topic_id'] as Map<String, dynamic>?)!,
      messageCount: (json['message_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId.toJson(),
        'message_count': messageCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateTopicMessageCount &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality()
              .equals(other.messageCount, messageCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(messageCount)
      ]);
}
