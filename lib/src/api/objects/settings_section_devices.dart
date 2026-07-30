import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The Devices section
@immutable
class SettingsSectionDevices extends SettingsSection {
  const SettingsSectionDevices({
    required this.subsection,
  });

  /// [subsection] Subsection of the section; may be one of "", "edit",
  /// "link-desktop", "terminate-sessions", "auto-terminate"
  final String subsection;

  static const String constructor = 'settingsSectionDevices';

  static SettingsSectionDevices? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionDevices(
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
