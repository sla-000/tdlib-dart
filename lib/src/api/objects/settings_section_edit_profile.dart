import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The profile edit section
@immutable
class SettingsSectionEditProfile extends SettingsSection {
  const SettingsSectionEditProfile({
    required this.subsection,
  });

  /// [subsection] Subsection of the section; may be one of "", "set-photo",
  /// "first-name", "last-name", "emoji-status", "bio", "birthday",
  /// "change-number", "username", "your-color", "channel", "add-account",
  /// "log-out", "profile-color/profile", "profile-color/profile/add-icons",
  /// "profile-color/profile/use-gift", "profile-color/name",
  /// "profile-color/name/add-icons", "profile-color/name/use-gift",
  /// "profile-photo/use-emoji"
  final String subsection;

  static const String constructor = 'settingsSectionEditProfile';

  static SettingsSectionEditProfile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionEditProfile(
      subsection: json['subsection'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'subsection': subsection,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
