// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A privacy setting for managing whether the user's profile audio files are
/// visible
@immutable
class UserPrivacySettingShowProfileAudio extends UserPrivacySetting {
  const UserPrivacySettingShowProfileAudio();

  static const String constructor = 'userPrivacySettingShowProfileAudio';

  static UserPrivacySettingShowProfileAudio? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowProfileAudio();
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
          other is UserPrivacySettingShowProfileAudio);

  @override
  int get hashCode => runtimeType.hashCode;
}
