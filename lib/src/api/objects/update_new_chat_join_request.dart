// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A user sent a join request to a chat; for bots only
@immutable
class UpdateNewChatJoinRequest extends Update {
  const UpdateNewChatJoinRequest({
    required this.chatId,
    required this.request,
    required this.userChatId,
    this.inviteLink,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [request] Join request
  final ChatJoinRequest request;

  /// [userChatId] Chat identifier of the private chat with the user
  final int userChatId;

  /// [inviteLink] The invite link, which was used to send join request; may be
  /// null
  final ChatInviteLink? inviteLink;

  static const String constructor = 'updateNewChatJoinRequest';

  static UpdateNewChatJoinRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewChatJoinRequest(
      chatId: (json['chat_id'] as int?) ?? 0,
      request:
          ChatJoinRequest.fromJson(json['request'] as Map<String, dynamic>?)!,
      userChatId: (json['user_chat_id'] as int?) ?? 0,
      inviteLink:
          ChatInviteLink.fromJson(json['invite_link'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'request': request.toJson(),
        'user_chat_id': userChatId,
        'invite_link': inviteLink?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateNewChatJoinRequest &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.request, request) &&
          const DeepCollectionEquality().equals(other.userChatId, userChatId) &&
          const DeepCollectionEquality().equals(other.inviteLink, inviteLink));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(request),
        const DeepCollectionEquality().hash(userChatId),
        const DeepCollectionEquality().hash(inviteLink)
      ]);
}
