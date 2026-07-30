// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Declines an invitation to an active group call via messageGroupCall. Can
/// be called both by the sender and the receiver of the invitation
/// Returns [Ok]
@immutable
class DeclineGroupCallInvitation extends TdFunction {
  const DeclineGroupCallInvitation({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the message of the type messageGroupCall
  final int messageId;

  static const String constructor = 'declineGroupCallInvitation';

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
          other is DeclineGroupCallInvitation &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId)
      ]);
}
