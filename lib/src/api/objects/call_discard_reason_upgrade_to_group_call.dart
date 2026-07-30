// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The call was ended because it has been upgraded to a group call
@immutable
class CallDiscardReasonUpgradeToGroupCall extends CallDiscardReason {
  const CallDiscardReasonUpgradeToGroupCall({
    required this.inviteLink,
  });

  /// [inviteLink] Invite link for the group call
  final String inviteLink;

  static const String constructor = 'callDiscardReasonUpgradeToGroupCall';

  static CallDiscardReasonUpgradeToGroupCall? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallDiscardReasonUpgradeToGroupCall(
      inviteLink: json['invite_link'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invite_link': inviteLink,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CallDiscardReasonUpgradeToGroupCall &&
          const DeepCollectionEquality().equals(other.inviteLink, inviteLink));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(inviteLink)]);
}
