import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The "Privacy Policy" section
@immutable
class SettingsSectionPrivacyPolicy extends SettingsSection {
  const SettingsSectionPrivacyPolicy();

  static const String constructor = 'settingsSectionPrivacyPolicy';

  static SettingsSectionPrivacyPolicy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SettingsSectionPrivacyPolicy();
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
