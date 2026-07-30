// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A privacy setting for managing whether the user's bio is visible
@immutable
class UserPrivacySettingShowBio extends UserPrivacySetting {
  const UserPrivacySettingShowBio();

  static const String constructor = 'userPrivacySettingShowBio';

  static UserPrivacySettingShowBio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowBio();
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
      (other.runtimeType == runtimeType && other is UserPrivacySettingShowBio);

  @override
  int get hashCode => runtimeType.hashCode;
}
