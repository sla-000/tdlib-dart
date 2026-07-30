// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A request to send a message has reached the Telegram server. This doesn't
/// mean that the message will be sent successfully. This update is sent only
/// if the option "use_quick_ack" is set to true. This update may be sent
/// multiple times for the same message
@immutable
class UpdateMessageSendAcknowledged extends Update {
  const UpdateMessageSendAcknowledged({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] The chat identifier of the sent message
  final int chatId;

  /// [messageId] A temporary message identifier
  final int messageId;

  static const String constructor = 'updateMessageSendAcknowledged';

  static UpdateMessageSendAcknowledged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageSendAcknowledged(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateMessageSendAcknowledged &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId)
      ]);
}
