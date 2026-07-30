// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The FAQ section
@immutable
class SettingsSectionFaq extends SettingsSection {
  const SettingsSectionFaq();

  static const String constructor = 'settingsSectionFaq';

  static SettingsSectionFaq? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SettingsSectionFaq();
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
      (other.runtimeType == runtimeType && other is SettingsSectionFaq);

  @override
  int get hashCode => runtimeType.hashCode;
}
