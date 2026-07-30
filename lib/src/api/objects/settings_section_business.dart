// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The "Telegram Business" section
@immutable
class SettingsSectionBusiness extends SettingsSection {
  const SettingsSectionBusiness({
    required this.subsection,
  });

  /// [subsection] Subsection of the section; may be one of "",
  /// "do-not-hide-ads"
  final String subsection;

  static const String constructor = 'settingsSectionBusiness';

  static SettingsSectionBusiness? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionBusiness(
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SettingsSectionBusiness &&
          const DeepCollectionEquality().equals(other.subsection, subsection));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(subsection)]);
}
