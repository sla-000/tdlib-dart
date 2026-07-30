// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Edits a subscription invite link for a channel chat. Requires
/// can_invite_users right in the chat for own links and owner privileges for
/// other links
/// Returns [ChatInviteLink]
@immutable
class EditChatSubscriptionInviteLink extends TdFunction {
  const EditChatSubscriptionInviteLink({
    required this.chatId,
    required this.inviteLink,
    required this.name,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link to be edited
  final String inviteLink;

  /// [name] Invite link name; 0-32 characters
  final String name;

  static const String constructor = 'editChatSubscriptionInviteLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'invite_link': inviteLink,
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditChatSubscriptionInviteLink &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.inviteLink, inviteLink) &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(inviteLink),
        const DeepCollectionEquality().hash(name)
      ]);
}
