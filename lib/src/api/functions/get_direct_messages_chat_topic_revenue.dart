// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the total number of Telegram Stars received by the channel chat
/// for direct messages from the given topic
/// Returns [StarCount]
@immutable
class GetDirectMessagesChatTopicRevenue extends TdFunction {
  const GetDirectMessagesChatTopicRevenue({
    required this.chatId,
    required this.topicId,
  });

  /// [chatId] Chat identifier of the channel direct messages chat administered
  /// by the current user
  final int chatId;

  /// [topicId] Identifier of the topic
  final int topicId;

  static const String constructor = 'getDirectMessagesChatTopicRevenue';

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
          other is GetDirectMessagesChatTopicRevenue &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId)
      ]);
}
