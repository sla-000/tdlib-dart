// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The power saving settings section
@immutable
class SettingsSectionPowerSaving extends SettingsSection {
  const SettingsSectionPowerSaving({
    required this.subsection,
  });

  /// [subsection] Subsection of the section; may be one of "", "videos",
  /// "gifs", "stickers", "emoji", "effects", "preload", "background",
  /// "call-animations", "particles", "transitions"
  final String subsection;

  static const String constructor = 'settingsSectionPowerSaving';

  static SettingsSectionPowerSaving? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionPowerSaving(
      subsection: (json['subsection'] as String?) ?? '',
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
          other is SettingsSectionPowerSaving &&
          const DeepCollectionEquality().equals(other.subsection, subsection));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(subsection)]);
}
