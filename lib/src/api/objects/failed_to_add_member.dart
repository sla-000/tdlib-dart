// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a user who has failed to be added to a chat
@immutable
class FailedToAddMember extends TdObject {
  const FailedToAddMember({
    required this.userId,
    required this.premiumWouldAllowInvite,
    required this.premiumRequiredToSendMessages,
  });

  /// [userId] User identifier
  final int userId;

  /// [premiumWouldAllowInvite] True, if subscription to Telegram Premium would
  /// have allowed to add the user to the chat
  final bool premiumWouldAllowInvite;

  /// [premiumRequiredToSendMessages] True, if subscription to Telegram Premium
  /// is required to send the user chat invite link
  final bool premiumRequiredToSendMessages;

  static const String constructor = 'failedToAddMember';

  static FailedToAddMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FailedToAddMember(
      userId: json['user_id'] as int,
      premiumWouldAllowInvite: json['premium_would_allow_invite'] as bool,
      premiumRequiredToSendMessages:
          json['premium_required_to_send_messages'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'premium_would_allow_invite': premiumWouldAllowInvite,
        'premium_required_to_send_messages': premiumRequiredToSendMessages,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is FailedToAddMember &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality()
              .equals(other.premiumWouldAllowInvite, premiumWouldAllowInvite) &&
          const DeepCollectionEquality().equals(
              other.premiumRequiredToSendMessages,
              premiumRequiredToSendMessages));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(premiumWouldAllowInvite),
        const DeepCollectionEquality().hash(premiumRequiredToSendMessages)
      ]);
}
