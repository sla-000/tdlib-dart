// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a chat invite link
@immutable
class ChatInviteLinkInfo extends TdObject {
  const ChatInviteLinkInfo({
    required this.chatId,
    required this.accessibleFor,
    required this.type,
    required this.title,
    this.photo,
    required this.accentColorId,
    required this.description,
    required this.memberCount,
    required this.memberUserIds,
    this.subscriptionInfo,
    required this.createsJoinRequest,
    required this.isPublic,
    this.verificationStatus,
  });

  /// [chatId] Chat identifier of the invite link; 0 if the user has no access
  /// to the chat before joining
  final int chatId;

  /// [accessibleFor] If non-zero, the amount of time for which read access to
  /// the chat will remain available, in seconds
  final int accessibleFor;

  /// [type] Type of the chat
  final InviteLinkChatType type;

  /// [title] Title of the chat
  final String title;

  /// [photo] Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [accentColorId] Identifier of the accent color for chat title and
  /// background of chat photo
  final int accentColorId;

  /// param_[description] Chat description
  final String description;

  /// [memberCount] Number of members in the chat
  final int memberCount;

  /// [memberUserIds] User identifiers of some chat members that may be known to
  /// the current user
  final List<int> memberUserIds;

  /// [subscriptionInfo] Information about subscription plan that must be paid
  /// by the user to use the link; may be null if the link doesn't require
  /// subscription
  final ChatInviteLinkSubscriptionInfo? subscriptionInfo;

  /// [createsJoinRequest] True, if the link only creates join request
  final bool createsJoinRequest;

  /// [isPublic] True, if the chat is a public supergroup or channel, i.e. it
  /// has a username or it is a location-based supergroup
  final bool isPublic;

  /// [verificationStatus] Information about verification status of the chat;
  /// may be null if none
  final VerificationStatus? verificationStatus;

  static const String constructor = 'chatInviteLinkInfo';

  static ChatInviteLinkInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkInfo(
      chatId: json['chat_id'] as int,
      accessibleFor: json['accessible_for'] as int,
      type: InviteLinkChatType.fromJson(json['type'] as Map<String, dynamic>?)!,
      title: json['title'] as String,
      photo: ChatPhotoInfo.fromJson(json['photo'] as Map<String, dynamic>?),
      accentColorId: json['accent_color_id'] as int,
      description: json['description'] as String,
      memberCount: json['member_count'] as int,
      memberUserIds: List<int>.from(
          ((json['member_user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      subscriptionInfo: ChatInviteLinkSubscriptionInfo.fromJson(
          json['subscription_info'] as Map<String, dynamic>?),
      createsJoinRequest: json['creates_join_request'] as bool,
      isPublic: json['is_public'] as bool,
      verificationStatus: VerificationStatus.fromJson(
          json['verification_status'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'accessible_for': accessibleFor,
        'type': type.toJson(),
        'title': title,
        'photo': photo?.toJson(),
        'accent_color_id': accentColorId,
        'description': description,
        'member_count': memberCount,
        'member_user_ids': memberUserIds.map((item) => item).toList(),
        'subscription_info': subscriptionInfo?.toJson(),
        'creates_join_request': createsJoinRequest,
        'is_public': isPublic,
        'verification_status': verificationStatus?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatInviteLinkInfo &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.accessibleFor, accessibleFor) &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality()
              .equals(other.accentColorId, accentColorId) &&
          const DeepCollectionEquality()
              .equals(other.description, description) &&
          const DeepCollectionEquality()
              .equals(other.memberCount, memberCount) &&
          const DeepCollectionEquality()
              .equals(other.memberUserIds, memberUserIds) &&
          const DeepCollectionEquality()
              .equals(other.subscriptionInfo, subscriptionInfo) &&
          const DeepCollectionEquality()
              .equals(other.createsJoinRequest, createsJoinRequest) &&
          const DeepCollectionEquality().equals(other.isPublic, isPublic) &&
          const DeepCollectionEquality()
              .equals(other.verificationStatus, verificationStatus));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(accessibleFor),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(accentColorId),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(memberCount),
        const DeepCollectionEquality().hash(memberUserIds),
        const DeepCollectionEquality().hash(subscriptionInfo),
        const DeepCollectionEquality().hash(createsJoinRequest),
        const DeepCollectionEquality().hash(isPublic),
        const DeepCollectionEquality().hash(verificationStatus)
      ]);
}
