// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user can't be invited due to their privacy settings
@immutable
class InviteGroupCallParticipantResultUserPrivacyRestricted
    extends InviteGroupCallParticipantResult {
  const InviteGroupCallParticipantResultUserPrivacyRestricted();

  static const String constructor =
      'inviteGroupCallParticipantResultUserPrivacyRestricted';

  static InviteGroupCallParticipantResultUserPrivacyRestricted? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InviteGroupCallParticipantResultUserPrivacyRestricted();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InviteGroupCallParticipantResultUserPrivacyRestricted);

  @override
  int get hashCode => runtimeType.hashCode;
}
