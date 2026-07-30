// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user was invited and a service message of the type messageGroupCall
/// was sent which can be used in declineGroupCallInvitation to cancel the
/// invitation
@immutable
class InviteGroupCallParticipantResultSuccess
    extends InviteGroupCallParticipantResult {
  const InviteGroupCallParticipantResultSuccess({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat with the invitation message
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  static const String constructor = 'inviteGroupCallParticipantResultSuccess';

  static InviteGroupCallParticipantResultSuccess? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InviteGroupCallParticipantResultSuccess(
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
          other is InviteGroupCallParticipantResultSuccess &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId)
      ]);
}
