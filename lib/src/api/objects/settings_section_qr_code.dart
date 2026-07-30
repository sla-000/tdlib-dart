import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The current user's QR code section
@immutable
class SettingsSectionQrCode extends SettingsSection {
  const SettingsSectionQrCode({
    required this.subsection,
  });

  /// [subsection] Subsection of the section; may be one of "", "share", "scan"
  final String subsection;

  static const String constructor = 'settingsSectionQrCode';

  static SettingsSectionQrCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionQrCode(
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
