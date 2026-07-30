// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a chat invite link
@immutable
class ChatInviteLink extends TdObject {
  const ChatInviteLink({
    required this.inviteLink,
    required this.name,
    required this.creatorUserId,
    required this.date,
    required this.editDate,
    required this.expirationDate,
    this.subscriptionPricing,
    required this.memberLimit,
    required this.memberCount,
    required this.expiredMemberCount,
    required this.pendingJoinRequestCount,
    required this.createsJoinRequest,
    required this.isPrimary,
    required this.isRevoked,
  });

  /// [inviteLink] Chat invite link
  final String inviteLink;

  /// [name] Name of the link
  final String name;

  /// [creatorUserId] User identifier of an administrator created the link
  final int creatorUserId;

  /// [date] Point in time (Unix timestamp) when the link was created
  final int date;

  /// [editDate] Point in time (Unix timestamp) when the link was last edited; 0
  /// if never or unknown
  final int editDate;

  /// [expirationDate] Point in time (Unix timestamp) when the link will expire;
  /// 0 if never
  final int expirationDate;

  /// [subscriptionPricing] Information about subscription plan that is applied
  /// to the users joining the chat by the link; may be null if the link doesn't
  /// require subscription
  final StarSubscriptionPricing? subscriptionPricing;

  /// [memberLimit] The maximum number of members, which can join the chat using
  /// the link simultaneously; 0 if not limited. Always 0 if the link requires
  /// approval
  final int memberLimit;

  /// [memberCount] Number of chat members, which joined the chat using the link
  final int memberCount;

  /// [expiredMemberCount] Number of chat members, which joined the chat using
  /// the link, but have already left because of expired subscription; for
  /// subscription links only
  final int expiredMemberCount;

  /// [pendingJoinRequestCount] Number of pending join requests created using
  /// this link
  final int pendingJoinRequestCount;

  /// [createsJoinRequest] True, if the link only creates join request. If true,
  /// total number of joining members will be unlimited
  final bool createsJoinRequest;

  /// [isPrimary] True, if the link is primary. Primary invite link can't have
  /// name, expiration date, or usage limit. There is exactly one primary invite
  /// link for each administrator with can_invite_users right at a given time
  final bool isPrimary;

  /// [isRevoked] True, if the link was revoked
  final bool isRevoked;

  static const String constructor = 'chatInviteLink';

  static ChatInviteLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLink(
      inviteLink: (json['invite_link'] as String?) ?? '',
      name: (json['name'] as String?) ?? '',
      creatorUserId: (json['creator_user_id'] as int?) ?? 0,
      date: (json['date'] as int?) ?? 0,
      editDate: (json['edit_date'] as int?) ?? 0,
      expirationDate: (json['expiration_date'] as int?) ?? 0,
      subscriptionPricing: StarSubscriptionPricing.fromJson(
          json['subscription_pricing'] as Map<String, dynamic>?),
      memberLimit: (json['member_limit'] as int?) ?? 0,
      memberCount: (json['member_count'] as int?) ?? 0,
      expiredMemberCount: (json['expired_member_count'] as int?) ?? 0,
      pendingJoinRequestCount:
          (json['pending_join_request_count'] as int?) ?? 0,
      createsJoinRequest: (json['creates_join_request'] as bool?) ?? false,
      isPrimary: (json['is_primary'] as bool?) ?? false,
      isRevoked: (json['is_revoked'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invite_link': inviteLink,
        'name': name,
        'creator_user_id': creatorUserId,
        'date': date,
        'edit_date': editDate,
        'expiration_date': expirationDate,
        'subscription_pricing': subscriptionPricing?.toJson(),
        'member_limit': memberLimit,
        'member_count': memberCount,
        'expired_member_count': expiredMemberCount,
        'pending_join_request_count': pendingJoinRequestCount,
        'creates_join_request': createsJoinRequest,
        'is_primary': isPrimary,
        'is_revoked': isRevoked,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatInviteLink &&
          const DeepCollectionEquality().equals(other.inviteLink, inviteLink) &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality()
              .equals(other.creatorUserId, creatorUserId) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality().equals(other.editDate, editDate) &&
          const DeepCollectionEquality()
              .equals(other.expirationDate, expirationDate) &&
          const DeepCollectionEquality()
              .equals(other.subscriptionPricing, subscriptionPricing) &&
          const DeepCollectionEquality()
              .equals(other.memberLimit, memberLimit) &&
          const DeepCollectionEquality()
              .equals(other.memberCount, memberCount) &&
          const DeepCollectionEquality()
              .equals(other.expiredMemberCount, expiredMemberCount) &&
          const DeepCollectionEquality()
              .equals(other.pendingJoinRequestCount, pendingJoinRequestCount) &&
          const DeepCollectionEquality()
              .equals(other.createsJoinRequest, createsJoinRequest) &&
          const DeepCollectionEquality().equals(other.isPrimary, isPrimary) &&
          const DeepCollectionEquality().equals(other.isRevoked, isRevoked));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(inviteLink),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(creatorUserId),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(editDate),
        const DeepCollectionEquality().hash(expirationDate),
        const DeepCollectionEquality().hash(subscriptionPricing),
        const DeepCollectionEquality().hash(memberLimit),
        const DeepCollectionEquality().hash(memberCount),
        const DeepCollectionEquality().hash(expiredMemberCount),
        const DeepCollectionEquality().hash(pendingJoinRequestCount),
        const DeepCollectionEquality().hash(createsJoinRequest),
        const DeepCollectionEquality().hash(isPrimary),
        const DeepCollectionEquality().hash(isRevoked)
      ]);
}
