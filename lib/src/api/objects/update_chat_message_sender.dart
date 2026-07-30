// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message sender that is selected to send messages in a chat has changed
@immutable
class UpdateChatMessageSender extends Update {
  const UpdateChatMessageSender({
    required this.chatId,
    this.messageSenderId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageSenderId] New value of message_sender_id; may be null if the user
  /// can't change message sender
  final MessageSender? messageSenderId;

  static const String constructor = 'updateChatMessageSender';

  static UpdateChatMessageSender? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatMessageSender(
      chatId: json['chat_id'] as int,
      messageSenderId: MessageSender.fromJson(
          json['message_sender_id'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_sender_id': messageSenderId?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatMessageSender &&
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
