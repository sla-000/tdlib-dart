// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Search in Settings
@immutable
class SettingsSectionSearch extends SettingsSection {
  const SettingsSectionSearch();

  static const String constructor = 'settingsSectionSearch';

  static SettingsSectionSearch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SettingsSectionSearch();
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
      (other.runtimeType == runtimeType && other is SettingsSectionSearch);

  @override
  int get hashCode => runtimeType.hashCode;
}
