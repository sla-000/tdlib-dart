// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes result of group call participant invitation
@immutable
abstract class InviteGroupCallParticipantResult extends TdObject {
  const InviteGroupCallParticipantResult();

  static const String constructor = 'inviteGroupCallParticipantResult';

  /// Inherited by:
  /// [InviteGroupCallParticipantResultSuccess]
  /// [InviteGroupCallParticipantResultUserAlreadyParticipant]
  /// [InviteGroupCallParticipantResultUserPrivacyRestricted]
  /// [InviteGroupCallParticipantResultUserWasBanned]
  static InviteGroupCallParticipantResult? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InviteGroupCallParticipantResultSuccess.constructor:
        return InviteGroupCallParticipantResultSuccess.fromJson(json);
      case InviteGroupCallParticipantResultUserAlreadyParticipant.constructor:
        return InviteGroupCallParticipantResultUserAlreadyParticipant.fromJson(
            json);
      case InviteGroupCallParticipantResultUserPrivacyRestricted.constructor:
        return InviteGroupCallParticipantResultUserPrivacyRestricted.fromJson(
            json);
      case InviteGroupCallParticipantResultUserWasBanned.constructor:
        return InviteGroupCallParticipantResultUserWasBanned.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InviteGroupCallParticipantResult);

  @override
  int get hashCode => runtimeType.hashCode;
}
