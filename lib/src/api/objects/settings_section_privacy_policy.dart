// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SettingsSectionPrivacyPolicy);

  @override
  int get hashCode => runtimeType.hashCode;
}
