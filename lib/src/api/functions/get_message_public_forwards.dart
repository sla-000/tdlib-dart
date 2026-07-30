// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns forwarded copies of a channel message to different public channels
/// and public reposts as a story. Can be used only if
/// messageProperties.can_get_statistics == true. For optimal performance, the
/// number of returned messages and stories is chosen by TDLib
/// Returns [PublicForwards]
@immutable
class GetMessagePublicForwards extends TdFunction {
  const GetMessagePublicForwards({
    required this.chatId,
    required this.messageId,
    required this.offset,
    required this.limit,
  });

  /// [chatId] Chat identifier of the message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of messages and stories to be returned; must be
  /// positive and can't be greater than 100. For optimal performance, the
  /// number of returned objects is chosen by TDLib and can be smaller than the
  /// specified limit
  final int limit;

  static const String constructor = 'getMessagePublicForwards';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetMessagePublicForwards &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit)
      ]);
}
