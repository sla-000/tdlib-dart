// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about the next messages of the specified type in the
/// chat split by days. Returns the results in reverse chronological order.
/// Can return partial result for the last returned day. Behavior of this
/// method depends on the value of the option "utc_time_offset"
/// Returns [MessageCalendar]
@immutable
class GetChatMessageCalendar extends TdFunction {
  const GetChatMessageCalendar({
    required this.chatId,
    this.topicId,
    required this.filter,
    required this.fromMessageId,
  });

  /// [chatId] Identifier of the chat in which to return information about
  /// messages
  final int chatId;

  /// [topicId] Pass topic identifier to get the result only in specific topic;
  /// pass null to get the result in all topics; forum topics and message
  /// threads aren't supported
  final MessageTopic? topicId;

  /// [filter] Filter for message content. Filters searchMessagesFilterEmpty,
  /// searchMessagesFilterMention, searchMessagesFilterUnreadMention,
  /// searchMessagesFilterUnreadReaction, and searchMessagesFilterUnreadPollVote
  /// are unsupported in this function
  final SearchMessagesFilter filter;

  /// [fromMessageId] The message identifier from which to return information
  /// about messages; use 0 to get results from the last message
  final int fromMessageId;

  static const String constructor = 'getChatMessageCalendar';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId?.toJson(),
        'filter': filter.toJson(),
        'from_message_id': fromMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatMessageCalendar &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality().equals(other.filter, filter) &&
          const DeepCollectionEquality()
              .equals(other.fromMessageId, fromMessageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(filter),
        const DeepCollectionEquality().hash(fromMessageId)
      ]);
}
