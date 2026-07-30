// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a chat theme based on an emoji
@immutable
class EmojiChatTheme extends TdObject {
  const EmojiChatTheme({
    required this.name,
    required this.lightSettings,
    required this.darkSettings,
  });

  /// [name] Theme name
  final String name;

  /// [lightSettings] Theme settings for a light chat theme
  final ThemeSettings lightSettings;

  /// [darkSettings] Theme settings for a dark chat theme
  final ThemeSettings darkSettings;

  static const String constructor = 'emojiChatTheme';

  static EmojiChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiChatTheme(
      name: json['name'] as String,
      lightSettings: ThemeSettings.fromJson(
          json['light_settings'] as Map<String, dynamic>?)!,
      darkSettings: ThemeSettings.fromJson(
          json['dark_settings'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'light_settings': lightSettings.toJson(),
        'dark_settings': darkSettings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EmojiChatTheme &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality()
              .equals(other.lightSettings, lightSettings) &&
          const DeepCollectionEquality()
              .equals(other.darkSettings, darkSettings));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(lightSettings),
        const DeepCollectionEquality().hash(darkSettings)
      ]);
}
