import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The Telegram Star balance and transaction section
@immutable
class SettingsSectionMyStars extends SettingsSection {
  const SettingsSectionMyStars({
    required this.subsection,
  });

  /// [subsection] Subsection of the section; may be one of "", "top-up",
  /// "stats", "gift", "earn"
  final String subsection;

  static const String constructor = 'settingsSectionMyStars';

  static SettingsSectionMyStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionMyStars(
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
