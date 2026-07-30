// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Selects a message sender to send messages in a chat
/// Returns [Ok]
@immutable
class SetChatMessageSender extends TdFunction {
  const SetChatMessageSender({
    required this.chatId,
    required this.messageSenderId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageSenderId] New message sender for the chat
  final MessageSender messageSenderId;

  static const String constructor = 'setChatMessageSender';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_sender_id': messageSenderId.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetChatMessageSender &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.messageSenderId, messageSenderId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageSenderId)
      ]);
}
