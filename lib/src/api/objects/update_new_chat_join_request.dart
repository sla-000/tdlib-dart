import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A user sent a join request to a chat; for bots only
@immutable
class UpdateNewChatJoinRequest extends Update {
  const UpdateNewChatJoinRequest({
    required this.chatId,
    required this.request,
    required this.userChatId,
    this.inviteLink,
    required this.queryId,
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

  /// [queryId] Identifier of the join request query, which can be used in
  /// answerChatJoinRequestQuery; 0 if none
  final int queryId;

  static const String constructor = 'updateNewChatJoinRequest';

  static UpdateNewChatJoinRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewChatJoinRequest(
      chatId: json['chat_id'] as int,
      request:
          ChatJoinRequest.fromJson(json['request'] as Map<String, dynamic>?)!,
      userChatId: json['user_chat_id'] as int,
      inviteLink:
          ChatInviteLink.fromJson(json['invite_link'] as Map<String, dynamic>?),
      queryId: int.tryParse(json['query_id']) ?? 0,
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
        'query_id': queryId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
