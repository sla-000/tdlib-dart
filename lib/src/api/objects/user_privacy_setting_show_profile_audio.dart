import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
