// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends a callback query to a bot and returns an answer. Returns an error
/// with code 502 if the bot fails to answer the query before the query
/// timeout expires
/// Returns [CallbackQueryAnswer]
@immutable
class GetCallbackQueryAnswer extends TdFunction {
  const GetCallbackQueryAnswer({
    required this.chatId,
    required this.messageId,
    required this.payload,
  });

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the message from which the query originated. The
  /// message must not be scheduled
  final int messageId;

  /// [payload] Query payload
  final CallbackQueryPayload payload;

  static const String constructor = 'getCallbackQueryAnswer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'payload': payload.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetCallbackQueryAnswer &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.payload, payload));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(payload)
      ]);
}
