import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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

  /// [ephemeralMessageId] Identifiers of the message to be deleted
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
