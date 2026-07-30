// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a chat member joined a chat via an invite link
@immutable
class ChatInviteLinkMember extends TdObject {
  const ChatInviteLinkMember({
    required this.userId,
    required this.joinedChatDate,
    required this.viaChatFolderInviteLink,
    required this.approverUserId,
  });

  /// [userId] User identifier
  final int userId;

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined the
  /// chat
  final int joinedChatDate;

  /// [viaChatFolderInviteLink] True, if the user has joined the chat using an
  /// invite link for a chat folder
  final bool viaChatFolderInviteLink;

  /// [approverUserId] User identifier of the chat administrator, approved user
  /// join request
  final int approverUserId;

  static const String constructor = 'chatInviteLinkMember';

  static ChatInviteLinkMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkMember(
      userId: json['user_id'] as int,
      joinedChatDate: json['joined_chat_date'] as int,
      viaChatFolderInviteLink: json['via_chat_folder_invite_link'] as bool,
      approverUserId: json['approver_user_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'joined_chat_date': joinedChatDate,
        'via_chat_folder_invite_link': viaChatFolderInviteLink,
        'approver_user_id': approverUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatInviteLinkMember &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality()
              .equals(other.joinedChatDate, joinedChatDate) &&
          const DeepCollectionEquality()
              .equals(other.viaChatFolderInviteLink, viaChatFolderInviteLink) &&
          const DeepCollectionEquality()
              .equals(other.approverUserId, approverUserId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(joinedChatDate),
        const DeepCollectionEquality().hash(viaChatFolderInviteLink),
        const DeepCollectionEquality().hash(approverUserId)
      ]);
}
