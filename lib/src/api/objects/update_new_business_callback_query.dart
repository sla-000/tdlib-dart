// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new incoming callback query from a business message; for bots only
@immutable
class UpdateNewBusinessCallbackQuery extends Update {
  const UpdateNewBusinessCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.connectionId,
    required this.message,
    required this.chatInstance,
    required this.payload,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [connectionId] Unique identifier of the business connection
  final String connectionId;

  /// [message] The message from the business account from which the query
  /// originated
  final BusinessMessage message;

  /// [chatInstance] An identifier uniquely corresponding to the chat a message
  /// was sent to
  final int chatInstance;

  /// [payload] Query payload
  final CallbackQueryPayload payload;

  static const String constructor = 'updateNewBusinessCallbackQuery';

  static UpdateNewBusinessCallbackQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewBusinessCallbackQuery(
      id: int.tryParse(json['id']) ?? 0,
      senderUserId: json['sender_user_id'] as int,
      connectionId: json['connection_id'] as String,
      message:
          BusinessMessage.fromJson(json['message'] as Map<String, dynamic>?)!,
      chatInstance: int.tryParse(json['chat_instance']) ?? 0,
      payload: CallbackQueryPayload.fromJson(
          json['payload'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'sender_user_id': senderUserId,
        'connection_id': connectionId,
        'message': message.toJson(),
        'chat_instance': chatInstance.toString(),
        'payload': payload.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateNewBusinessCallbackQuery &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality()
              .equals(other.senderUserId, senderUserId) &&
          const DeepCollectionEquality()
              .equals(other.connectionId, connectionId) &&
          const DeepCollectionEquality().equals(other.message, message) &&
          const DeepCollectionEquality()
              .equals(other.chatInstance, chatInstance) &&
          const DeepCollectionEquality().equals(other.payload, payload));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(senderUserId),
        const DeepCollectionEquality().hash(connectionId),
        const DeepCollectionEquality().hash(message),
        const DeepCollectionEquality().hash(chatInstance),
        const DeepCollectionEquality().hash(payload)
      ]);
}
