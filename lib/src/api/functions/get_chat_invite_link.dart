// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about an invite link. Requires administrator
/// privileges and can_invite_users right in the chat to get own links and
/// owner privileges to get other links
/// Returns [ChatInviteLink]
@immutable
class GetChatInviteLink extends TdFunction {
  const GetChatInviteLink({
    required this.chatId,
    required this.inviteLink,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link to get
  final String inviteLink;

  static const String constructor = 'getChatInviteLink';

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
          other is GetChatInviteLink &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.inviteLink, inviteLink));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(inviteLink)
      ]);
}
