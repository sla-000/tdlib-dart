// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat folder settings section
@immutable
class SettingsSectionChatFolders extends SettingsSection {
  const SettingsSectionChatFolders({
    required this.subsection,
  });

  /// [subsection] Subsection of the section; may be one of "", "edit",
  /// "create", "add-recommended", "show-tags", "tab-view"
  final String subsection;

  static const String constructor = 'settingsSectionChatFolders';

  static SettingsSectionChatFolders? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionChatFolders(
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
          other is SettingsSectionChatFolders &&
          const DeepCollectionEquality().equals(other.subsection, subsection));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(subsection)]);
}
