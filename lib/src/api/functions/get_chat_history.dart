// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns messages in a chat. The messages are returned in reverse
/// chronological order (i.e., in order of decreasing message_id). For optimal
/// performance, the number of returned messages is chosen by TDLib. This is
/// an offline method if only_local is true
/// Returns [Messages]
@immutable
class GetChatHistory extends TdFunction {
  const GetChatHistory({
    required this.chatId,
    required this.fromMessageId,
    required this.offset,
    required this.limit,
    required this.onlyLocal,
  });

  /// [chatId] Chat identifier
  final int chatId;

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

  /// [onlyLocal] Pass true to get only messages that are available without
  /// sending network requests
  final bool onlyLocal;

  static const String constructor = 'getChatHistory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'from_message_id': fromMessageId,
        'offset': offset,
        'limit': limit,
        'only_local': onlyLocal,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatHistory &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.fromMessageId, fromMessageId) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit) &&
          const DeepCollectionEquality().equals(other.onlyLocal, onlyLocal));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(fromMessageId),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit),
        const DeepCollectionEquality().hash(onlyLocal)
      ]);
}
