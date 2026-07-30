import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The TON Gram balance and transaction section
@immutable
class SettingsSectionMyGrams extends SettingsSection {
  const SettingsSectionMyGrams();

  static const String constructor = 'settingsSectionMyGrams';

  static SettingsSectionMyGrams? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SettingsSectionMyGrams();
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
