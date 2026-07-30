// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a message with the callback button that
/// originated a callback query; for bots only
/// Returns [Message]
@immutable
class GetCallbackQueryMessage extends TdFunction {
  const GetCallbackQueryMessage({
    required this.chatId,
    required this.messageId,
    required this.callbackQueryId,
  });

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [callbackQueryId] Identifier of the callback query
  final int callbackQueryId;

  static const String constructor = 'getCallbackQueryMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'callback_query_id': callbackQueryId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetCallbackQueryMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.callbackQueryId, callbackQueryId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(callbackQueryId)
      ]);
}
