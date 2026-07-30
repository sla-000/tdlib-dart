// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns chat members joined a chat via an invite link. Requires
/// administrator privileges and can_invite_users right in the chat for own
/// links and owner privileges for other links
/// Returns [ChatInviteLinkMembers]
@immutable
class GetChatInviteLinkMembers extends TdFunction {
  const GetChatInviteLinkMembers({
    required this.chatId,
    required this.inviteLink,
    required this.onlyWithExpiredSubscription,
    this.offsetMember,
    required this.limit,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link for which to return chat members
  final String inviteLink;

  /// [onlyWithExpiredSubscription] Pass true if the link is a subscription link
  /// and only members with expired subscription must be returned
  final bool onlyWithExpiredSubscription;

  /// [offsetMember] A chat member from which to return next chat members; pass
  /// null to get results from the beginning
  final ChatInviteLinkMember? offsetMember;

  /// [limit] The maximum number of chat members to return; up to 100
  final int limit;

  static const String constructor = 'getChatInviteLinkMembers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'invite_link': inviteLink,
        'only_with_expired_subscription': onlyWithExpiredSubscription,
        'offset_member': offsetMember?.toJson(),
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatInviteLinkMembers &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.inviteLink, inviteLink) &&
          const DeepCollectionEquality().equals(
              other.onlyWithExpiredSubscription, onlyWithExpiredSubscription) &&
          const DeepCollectionEquality()
              .equals(other.offsetMember, offsetMember) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(inviteLink),
        const DeepCollectionEquality().hash(onlyWithExpiredSubscription),
        const DeepCollectionEquality().hash(offsetMember),
        const DeepCollectionEquality().hash(limit)
      ]);
}
