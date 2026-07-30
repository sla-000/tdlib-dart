// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns messages in a Saved Messages topic. The messages are returned in
/// reverse chronological order (i.e., in order of decreasing message_id)
/// Returns [Messages]
@immutable
class GetSavedMessagesTopicHistory extends TdFunction {
  const GetSavedMessagesTopicHistory({
    required this.savedMessagesTopicId,
    required this.fromMessageId,
    required this.offset,
    required this.limit,
  });

  /// [savedMessagesTopicId] Identifier of Saved Messages topic which messages
  /// will be fetched
  final int savedMessagesTopicId;

  /// [fromMessageId] Identifier of the message starting from which messages
  /// must be fetched; use 0 to get results from the last message
  final int fromMessageId;

  /// [offset] Specify 0 to get results from exactly the message from_message_id
  /// or a negative number from -99 to -1 to get additionally -offset newer
  /// messages
  final int offset;

  /// [limit] The maximum number of messages to be returned; must be positive
  /// and can't be greater than 100. If the offset is negative, then the limit
  /// must be greater than or equal to -offset. For optimal performance, the
  /// number of returned messages is chosen by TDLib and can be smaller than the
  /// specified limit
  final int limit;

  static const String constructor = 'getSavedMessagesTopicHistory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'saved_messages_topic_id': savedMessagesTopicId,
        'from_message_id': fromMessageId,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetSavedMessagesTopicHistory &&
          const DeepCollectionEquality()
              .equals(other.savedMessagesTopicId, savedMessagesTopicId) &&
          const DeepCollectionEquality()
              .equals(other.fromMessageId, fromMessageId) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(savedMessagesTopicId),
        const DeepCollectionEquality().hash(fromMessageId),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit)
      ]);
}
