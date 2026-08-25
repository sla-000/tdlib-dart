// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes an ephemeral message; for bots only
/// Returns [Ok]
@immutable
class DeleteEphemeralMessage extends TdFunction {
  const DeleteEphemeralMessage({
    required this.chatId,
    required this.receiverUserId,
    required this.ephemeralMessageId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [receiverUserId] Identifier of the user who received the message
  final int receiverUserId;

  /// [ephemeralMessageId] Identifier of the message to be deleted
  final int ephemeralMessageId;

  static const String constructor = 'deleteEphemeralMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'receiver_user_id': receiverUserId,
        'ephemeral_message_id': ephemeralMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteEphemeralMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.receiverUserId, receiverUserId) &&
          const DeepCollectionEquality()
              .equals(other.ephemeralMessageId, ephemeralMessageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(receiverUserId),
        const DeepCollectionEquality().hash(ephemeralMessageId)
      ]);
}
