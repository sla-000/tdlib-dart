// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a chat administrator with a number of active and revoked chat
/// invite links
@immutable
class ChatInviteLinkCount extends TdObject {
  const ChatInviteLinkCount({
    required this.userId,
    required this.inviteLinkCount,
    required this.revokedInviteLinkCount,
  });

  /// [userId] Administrator's user identifier
  final int userId;

  /// [inviteLinkCount] Number of active invite links
  final int inviteLinkCount;

  /// [revokedInviteLinkCount] Number of revoked invite links
  final int revokedInviteLinkCount;

  static const String constructor = 'chatInviteLinkCount';

  static ChatInviteLinkCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkCount(
      userId: (json['user_id'] as int?) ?? 0,
      inviteLinkCount: (json['invite_link_count'] as int?) ?? 0,
      revokedInviteLinkCount: (json['revoked_invite_link_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'invite_link_count': inviteLinkCount,
        'revoked_invite_link_count': revokedInviteLinkCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatInviteLinkCount &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality()
              .equals(other.inviteLinkCount, inviteLinkCount) &&
          const DeepCollectionEquality()
              .equals(other.revokedInviteLinkCount, revokedInviteLinkCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(inviteLinkCount),
        const DeepCollectionEquality().hash(revokedInviteLinkCount)
      ]);
}
