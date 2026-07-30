// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes all messages between the specified dates in the topic in a channel
/// direct messages chat administered by the current user. Messages sent in
/// the last 30 seconds will not be deleted
/// Returns [Ok]
@immutable
class DeleteDirectMessagesChatTopicMessagesByDate extends TdFunction {
  const DeleteDirectMessagesChatTopicMessagesByDate({
    required this.chatId,
    required this.topicId,
    required this.minDate,
    required this.maxDate,
  });

  /// [chatId] Chat identifier of the channel direct messages chat
  final int chatId;

  /// [topicId] Identifier of the topic which messages will be deleted
  final int topicId;

  /// [minDate] The minimum date of the messages to delete
  final int minDate;

  /// [maxDate] The maximum date of the messages to delete
  final int maxDate;

  static const String constructor =
      'deleteDirectMessagesChatTopicMessagesByDate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId,
        'min_date': minDate,
        'max_date': maxDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteDirectMessagesChatTopicMessagesByDate &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality().equals(other.minDate, minDate) &&
          const DeepCollectionEquality().equals(other.maxDate, maxDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(minDate),
        const DeepCollectionEquality().hash(maxDate)
      ]);
}
