// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The in-app browser settings section
@immutable
class SettingsSectionInAppBrowser extends SettingsSection {
  const SettingsSectionInAppBrowser({
    required this.subsection,
  });

  /// [subsection] Subsection of the section; may be one of "",
  /// "enable-browser", "clear-cookies", "clear-cache", "history",
  /// "clear-history", "never-open", "clear-list", "search"
  final String subsection;

  static const String constructor = 'settingsSectionInAppBrowser';

  static SettingsSectionInAppBrowser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionInAppBrowser(
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
          other is SettingsSectionInAppBrowser &&
          const DeepCollectionEquality().equals(other.subsection, subsection));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(subsection)]);
}
