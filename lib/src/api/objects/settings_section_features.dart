// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The "Telegram Features" section
@immutable
class SettingsSectionFeatures extends SettingsSection {
  const SettingsSectionFeatures();

  static const String constructor = 'settingsSectionFeatures';

  static SettingsSectionFeatures? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SettingsSectionFeatures();
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
      (other.runtimeType == runtimeType && other is SettingsSectionFeatures);

  @override
  int get hashCode => runtimeType.hashCode;
}
