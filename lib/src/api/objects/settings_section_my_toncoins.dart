// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The Toncoin balance and transaction section
@immutable
class SettingsSectionMyToncoins extends SettingsSection {
  const SettingsSectionMyToncoins();

  static const String constructor = 'settingsSectionMyToncoins';

  static SettingsSectionMyToncoins? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SettingsSectionMyToncoins();
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
      (other.runtimeType == runtimeType && other is SettingsSectionMyToncoins);

  @override
  int get hashCode => runtimeType.hashCode;
}
