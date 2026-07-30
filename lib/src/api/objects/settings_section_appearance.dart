// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The appearance section
@immutable
class SettingsSectionAppearance extends SettingsSection {
  const SettingsSectionAppearance({
    required this.subsection,
  });

  /// [subsection] Subsection of the section; may be one of "", "themes",
  /// "themes/edit", "themes/create", "wallpapers", "wallpapers/edit",
  /// "wallpapers/set", "wallpapers/choose-photo", "your-color/profile",
  /// "your-color/profile/add-icons", "your-color/profile/use-gift",
  /// "your-color/profile/reset", "your-color/name",
  /// "your-color/name/add-icons", "your-color/name/use-gift", "night-mode",
  /// "auto-night-mode", "text-size", "text-size/use-system", "message-corners",
  /// "animations", "stickers-and-emoji", "stickers-and-emoji/edit",
  /// "stickers-and-emoji/trending", "stickers-and-emoji/archived",
  /// "stickers-and-emoji/archived/edit", "stickers-and-emoji/emoji",
  /// "stickers-and-emoji/emoji/edit", "stickers-and-emoji/emoji/archived",
  /// "stickers-and-emoji/emoji/archived/edit",
  /// "stickers-and-emoji/emoji/suggest",
  /// "stickers-and-emoji/emoji/quick-reaction",
  /// "stickers-and-emoji/emoji/quick-reaction/choose",
  /// "stickers-and-emoji/suggest-by-emoji", "stickers-and-emoji/large-emoji",
  /// "stickers-and-emoji/dynamic-order", "stickers-and-emoji/emoji/show-more",
  /// "app-icon", "tap-for-next-media"
  final String subsection;

  static const String constructor = 'settingsSectionAppearance';

  static SettingsSectionAppearance? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionAppearance(
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
          other is SettingsSectionAppearance &&
          const DeepCollectionEquality().equals(other.subsection, subsection));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(subsection)]);
}
