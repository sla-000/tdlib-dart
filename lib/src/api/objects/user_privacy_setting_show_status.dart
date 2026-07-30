// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A privacy setting for managing whether the user's online status is visible
@immutable
class UserPrivacySettingShowStatus extends UserPrivacySetting {
  const UserPrivacySettingShowStatus();

  static const String constructor = 'userPrivacySettingShowStatus';

  static UserPrivacySettingShowStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowStatus();
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
          other is UserPrivacySettingShowStatus);

  @override
  int get hashCode => runtimeType.hashCode;
}
