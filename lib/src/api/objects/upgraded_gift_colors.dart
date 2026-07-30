// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about color scheme for user's name, background of
/// empty chat photo, replies to messages and link previews
@immutable
class UpgradedGiftColors extends TdObject {
  const UpgradedGiftColors({
    required this.id,
    required this.modelCustomEmojiId,
    required this.symbolCustomEmojiId,
    required this.lightThemeAccentColor,
    required this.lightThemeColors,
    required this.darkThemeAccentColor,
    required this.darkThemeColors,
  });

  /// [id] Unique identifier of the upgraded gift colors
  final int id;

  /// [modelCustomEmojiId] Custom emoji identifier of the model of the upgraded
  /// gift
  final int modelCustomEmojiId;

  /// [symbolCustomEmojiId] Custom emoji identifier of the symbol of the
  /// upgraded gift
  final int symbolCustomEmojiId;

  /// [lightThemeAccentColor] Accent color to use in light themes in RGB format
  final int lightThemeAccentColor;

  /// [lightThemeColors] The list of 1-3 colors in RGB format, describing the
  /// accent color, as expected to be shown in light themes
  final List<int> lightThemeColors;

  /// [darkThemeAccentColor] Accent color to use in dark themes in RGB format
  final int darkThemeAccentColor;

  /// [darkThemeColors] The list of 1-3 colors in RGB format, describing the
  /// accent color, as expected to be shown in dark themes
  final List<int> darkThemeColors;

  static const String constructor = 'upgradedGiftColors';

  static UpgradedGiftColors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftColors(
      id: (json['id'] is int
              ? json['id'] as int
              : int.tryParse(json['id']?.toString() ?? '')) ??
          0,
      modelCustomEmojiId: (json['model_custom_emoji_id'] is int
              ? json['model_custom_emoji_id'] as int
              : int.tryParse(
                  json['model_custom_emoji_id']?.toString() ?? '')) ??
          0,
      symbolCustomEmojiId: (json['symbol_custom_emoji_id'] is int
              ? json['symbol_custom_emoji_id'] as int
              : int.tryParse(
                  json['symbol_custom_emoji_id']?.toString() ?? '')) ??
          0,
      lightThemeAccentColor: (json['light_theme_accent_color'] as int?) ?? 0,
      lightThemeColors: List<int>.from(
          ((json['light_theme_colors'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
      darkThemeAccentColor: (json['dark_theme_accent_color'] as int?) ?? 0,
      darkThemeColors: List<int>.from(
          ((json['dark_theme_colors'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'model_custom_emoji_id': modelCustomEmojiId.toString(),
        'symbol_custom_emoji_id': symbolCustomEmojiId.toString(),
        'light_theme_accent_color': lightThemeAccentColor,
        'light_theme_colors': lightThemeColors.map((item) => item).toList(),
        'dark_theme_accent_color': darkThemeAccentColor,
        'dark_theme_colors': darkThemeColors.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftColors &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality()
              .equals(other.modelCustomEmojiId, modelCustomEmojiId) &&
          const DeepCollectionEquality()
              .equals(other.symbolCustomEmojiId, symbolCustomEmojiId) &&
          const DeepCollectionEquality()
              .equals(other.lightThemeAccentColor, lightThemeAccentColor) &&
          const DeepCollectionEquality()
              .equals(other.lightThemeColors, lightThemeColors) &&
          const DeepCollectionEquality()
              .equals(other.darkThemeAccentColor, darkThemeAccentColor) &&
          const DeepCollectionEquality()
              .equals(other.darkThemeColors, darkThemeColors));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(modelCustomEmojiId),
        const DeepCollectionEquality().hash(symbolCustomEmojiId),
        const DeepCollectionEquality().hash(lightThemeAccentColor),
        const DeepCollectionEquality().hash(lightThemeColors),
        const DeepCollectionEquality().hash(darkThemeAccentColor),
        const DeepCollectionEquality().hash(darkThemeColors)
      ]);
}
