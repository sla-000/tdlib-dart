// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A privacy setting for managing whether the user's profile photo is visible
@immutable
class UserPrivacySettingShowProfilePhoto extends UserPrivacySetting {
  const UserPrivacySettingShowProfilePhoto();

  static const String constructor = 'userPrivacySettingShowProfilePhoto';

  static UserPrivacySettingShowProfilePhoto? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowProfilePhoto();
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
          other is UserPrivacySettingShowProfilePhoto);

  @override
  int get hashCode => runtimeType.hashCode;
}
