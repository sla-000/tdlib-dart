// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new member joined the chat via an invite link
@immutable
class ChatEventMemberJoinedByInviteLink extends ChatEventAction {
  const ChatEventMemberJoinedByInviteLink({
    required this.inviteLink,
    required this.viaChatFolderInviteLink,
  });

  /// [inviteLink] Invite link used to join the chat
  final ChatInviteLink inviteLink;

  /// [viaChatFolderInviteLink] True, if the user has joined the chat using an
  /// invite link for a chat folder
  final bool viaChatFolderInviteLink;

  static const String constructor = 'chatEventMemberJoinedByInviteLink';

  static ChatEventMemberJoinedByInviteLink? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberJoinedByInviteLink(
      inviteLink: ChatInviteLink.fromJson(
          json['invite_link'] as Map<String, dynamic>?)!,
      viaChatFolderInviteLink:
          (json['via_chat_folder_invite_link'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invite_link': inviteLink.toJson(),
        'via_chat_folder_invite_link': viaChatFolderInviteLink,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventMemberJoinedByInviteLink &&
          const DeepCollectionEquality().equals(other.inviteLink, inviteLink) &&
          const DeepCollectionEquality()
              .equals(other.viaChatFolderInviteLink, viaChatFolderInviteLink));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(inviteLink),
        const DeepCollectionEquality().hash(viaChatFolderInviteLink)
      ]);
}
