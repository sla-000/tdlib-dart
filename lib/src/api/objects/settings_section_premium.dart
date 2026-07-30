// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The "Telegram Premium" section
@immutable
class SettingsSectionPremium extends SettingsSection {
  const SettingsSectionPremium();

  static const String constructor = 'settingsSectionPremium';

  static SettingsSectionPremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SettingsSectionPremium();
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
      (other.runtimeType == runtimeType && other is SettingsSectionPremium);

  @override
  int get hashCode => runtimeType.hashCode;
}
