// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A privacy setting for managing whether the user's birthdate is visible
@immutable
class UserPrivacySettingShowBirthdate extends UserPrivacySetting {
  const UserPrivacySettingShowBirthdate();

  static const String constructor = 'userPrivacySettingShowBirthdate';

  static UserPrivacySettingShowBirthdate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowBirthdate();
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
          other is UserPrivacySettingShowBirthdate);

  @override
  int get hashCode => runtimeType.hashCode;
}
