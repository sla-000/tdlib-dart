// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a user or a chat as a member of another chat
@immutable
class ChatMember extends TdObject {
  const ChatMember({
    required this.memberId,
    required this.tag,
    required this.inviterUserId,
    required this.joinedChatDate,
    required this.status,
  });

  /// [memberId] Identifier of the chat member. Currently, other chats can be
  /// only Left or Banned. Only supergroups and channels can have other chats as
  /// Left or Banned members and these chats must be supergroups or channels
  final MessageSender memberId;

  /// [tag] Tag of the chat member or its custom title if the member is an
  /// administrator of the chat; 0-16 characters without emoji; applicable to
  /// basic groups and supergroups only
  final String tag;

  /// [inviterUserId] Identifier of a user who invited/promoted/banned this
  /// member in the chat; 0 if unknown
  final int inviterUserId;

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined/was
  /// promoted/was banned in the chat
  final int joinedChatDate;

  /// [status] Status of the member in the chat
  final ChatMemberStatus status;

  static const String constructor = 'chatMember';

  static ChatMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMember(
      memberId:
          MessageSender.fromJson(json['member_id'] as Map<String, dynamic>?)!,
      tag: (json['tag'] as String?) ?? '',
      inviterUserId: (json['inviter_user_id'] as int?) ?? 0,
      joinedChatDate: (json['joined_chat_date'] as int?) ?? 0,
      status:
          ChatMemberStatus.fromJson(json['status'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'member_id': memberId.toJson(),
        'tag': tag,
        'inviter_user_id': inviterUserId,
        'joined_chat_date': joinedChatDate,
        'status': status.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatMember &&
          const DeepCollectionEquality().equals(other.memberId, memberId) &&
          const DeepCollectionEquality().equals(other.tag, tag) &&
          const DeepCollectionEquality()
              .equals(other.inviterUserId, inviterUserId) &&
          const DeepCollectionEquality()
              .equals(other.joinedChatDate, joinedChatDate) &&
          const DeepCollectionEquality().equals(other.status, status));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(memberId),
        const DeepCollectionEquality().hash(tag),
        const DeepCollectionEquality().hash(inviterUserId),
        const DeepCollectionEquality().hash(joinedChatDate),
        const DeepCollectionEquality().hash(status)
      ]);
}
