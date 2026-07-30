import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns messages in a topic in a forum supergroup chat or a chat with a
/// bot with topics. The messages are returned in reverse chronological order
/// (i.e., in order of decreasing message_id). For optimal performance, the
/// number of returned messages is chosen by TDLib
/// Returns [Messages]
@immutable
class GetForumTopicHistory extends TdFunction {
  const GetForumTopicHistory({
    required this.chatId,
    required this.forumTopicId,
    required this.fromMessageId,
    required this.offset,
    required this.limit,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [forumTopicId] Forum topic identifier
  final int forumTopicId;

  /// [fromMessageId] Identifier of the message starting from which history must
  /// be fetched; use 0 to get results from the last message
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

  static const String constructor = 'getForumTopicHistory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'forum_topic_id': forumTopicId,
        'from_message_id': fromMessageId,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
