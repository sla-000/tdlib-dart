import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The data and storage settings section
@immutable
class SettingsSectionDataAndStorage extends SettingsSection {
  const SettingsSectionDataAndStorage({
    required this.subsection,
  });

  /// [subsection] Subsection of the section; may be one of "", "storage",
  /// "storage/edit", "storage/auto-remove", "storage/clear-cache",
  /// "storage/max-cache", "usage", "usage/mobile", "usage/wifi", "usage/reset",
  /// "usage/roaming", "auto-download/mobile", "auto-download/mobile/enable",
  /// "auto-download/mobile/usage", "auto-download/mobile/photos",
  /// "auto-download/mobile/stories", "auto-download/mobile/videos",
  /// "auto-download/mobile/files", "auto-download/wifi",
  /// "auto-download/wifi/enable", "auto-download/wifi/usage",
  /// "auto-download/wifi/photos", "auto-download/wifi/stories",
  /// "auto-download/wifi/videos", "auto-download/wifi/files",
  /// "auto-download/roaming", "auto-download/roaming/enable",
  /// "auto-download/roaming/usage", "auto-download/roaming/photos",
  /// "auto-download/roaming/stories", "auto-download/roaming/videos",
  /// "auto-download/roaming/files", "auto-download/reset",
  /// "save-to-photos/chats", "save-to-photos/chats/max-video-size",
  /// "save-to-photos/chats/add-exception", "save-to-photos/chats/delete-all",
  /// "save-to-photos/groups", "save-to-photos/groups/max-video-size",
  /// "save-to-photos/groups/add-exception", "save-to-photos/groups/delete-all",
  /// "save-to-photos/channels", "save-to-photos/channels/max-video-size",
  /// "save-to-photos/channels/add-exception",
  /// "save-to-photos/channels/delete-all", "less-data-calls", "open-links",
  /// "share-sheet", "share-sheet/suggested-chats", "share-sheet/suggest-by",
  /// "share-sheet/reset", "saved-edited-photos", "pause-music",
  /// "raise-to-listen", "raise-to-speak", "show-18-content", "proxy",
  /// "proxy/edit", "proxy/use-proxy", "proxy/add-proxy", "proxy/share-list",
  /// "proxy/use-for-calls"
  final String subsection;

  static const String constructor = 'settingsSectionDataAndStorage';

  static SettingsSectionDataAndStorage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionDataAndStorage(
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
