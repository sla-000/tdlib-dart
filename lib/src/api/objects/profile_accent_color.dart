// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about supported accent color for user profile photo
/// background
@immutable
class ProfileAccentColor extends TdObject {
  const ProfileAccentColor({
    required this.id,
    required this.lightThemeColors,
    required this.darkThemeColors,
    required this.minSupergroupChatBoostLevel,
    required this.minChannelChatBoostLevel,
  });

  /// [id] Profile accent color identifier
  final int id;

  /// [lightThemeColors] Accent colors expected to be used in light themes
  final ProfileAccentColors lightThemeColors;

  /// [darkThemeColors] Accent colors expected to be used in dark themes
  final ProfileAccentColors darkThemeColors;

  /// [minSupergroupChatBoostLevel] The minimum chat boost level required to use
  /// the color in a supergroup chat
  final int minSupergroupChatBoostLevel;

  /// [minChannelChatBoostLevel] The minimum chat boost level required to use
  /// the color in a channel chat
  final int minChannelChatBoostLevel;

  static const String constructor = 'profileAccentColor';

  static ProfileAccentColor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProfileAccentColor(
      id: (json['id'] as int?) ?? 0,
      lightThemeColors: ProfileAccentColors.fromJson(
          json['light_theme_colors'] as Map<String, dynamic>?)!,
      darkThemeColors: ProfileAccentColors.fromJson(
          json['dark_theme_colors'] as Map<String, dynamic>?)!,
      minSupergroupChatBoostLevel:
          (json['min_supergroup_chat_boost_level'] as int?) ?? 0,
      minChannelChatBoostLevel:
          (json['min_channel_chat_boost_level'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'light_theme_colors': lightThemeColors.toJson(),
        'dark_theme_colors': darkThemeColors.toJson(),
        'min_supergroup_chat_boost_level': minSupergroupChatBoostLevel,
        'min_channel_chat_boost_level': minChannelChatBoostLevel,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ProfileAccentColor &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality()
              .equals(other.lightThemeColors, lightThemeColors) &&
          const DeepCollectionEquality()
              .equals(other.darkThemeColors, darkThemeColors) &&
          const DeepCollectionEquality().equals(
              other.minSupergroupChatBoostLevel, minSupergroupChatBoostLevel) &&
          const DeepCollectionEquality().equals(
              other.minChannelChatBoostLevel, minChannelChatBoostLevel));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(lightThemeColors),
        const DeepCollectionEquality().hash(darkThemeColors),
        const DeepCollectionEquality().hash(minSupergroupChatBoostLevel),
        const DeepCollectionEquality().hash(minChannelChatBoostLevel)
      ]);
}
