// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the last message sent in the topic in a channel direct messages
/// chat administered by the current user no later than the specified date
/// Returns [Message]
@immutable
class GetDirectMessagesChatTopicMessageByDate extends TdFunction {
  const GetDirectMessagesChatTopicMessageByDate({
    required this.chatId,
    required this.topicId,
    required this.date,
  });

  /// [chatId] Chat identifier of the channel direct messages chat
  final int chatId;

  /// [topicId] Identifier of the topic which messages will be fetched
  final int topicId;

  /// [date] Point in time (Unix timestamp) relative to which to search for
  /// messages
  final int date;

  static const String constructor = 'getDirectMessagesChatTopicMessageByDate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId,
        'date': date,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetDirectMessagesChatTopicMessageByDate &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality().equals(other.date, date));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(date)
      ]);
}
