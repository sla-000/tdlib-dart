// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The application language section
@immutable
class SettingsSectionLanguage extends SettingsSection {
  const SettingsSectionLanguage({
    required this.subsection,
  });

  /// [subsection] Subsection of the section; may be one of "", "show-button"
  /// for Show Translate Button toggle, "translate-chats" for Translate Entire
  /// Chats toggle, "do-not-translate" - for Do Not Translate language list
  final String subsection;

  static const String constructor = 'settingsSectionLanguage';

  static SettingsSectionLanguage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionLanguage(
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
          other is SettingsSectionLanguage &&
          const DeepCollectionEquality().equals(other.subsection, subsection));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(subsection)]);
}
