// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Revokes invite link for a chat. Available in basic groups, supergroups,
/// and channels. Requires administrator privileges and can_invite_users right
/// in the chat for own links and owner privileges for other links. If a
/// primary link is revoked, then additionally to the revoked link returns new
/// primary link
/// Returns [ChatInviteLinks]
@immutable
class RevokeChatInviteLink extends TdFunction {
  const RevokeChatInviteLink({
    required this.chatId,
    required this.inviteLink,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link to be revoked
  final String inviteLink;

  static const String constructor = 'revokeChatInviteLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'invite_link': inviteLink,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RevokeChatInviteLink &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.inviteLink, inviteLink));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(inviteLink)
      ]);
}
