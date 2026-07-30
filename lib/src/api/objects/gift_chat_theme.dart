// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a chat theme based on an upgraded gift
@immutable
class GiftChatTheme extends TdObject {
  const GiftChatTheme({
    required this.gift,
    required this.lightSettings,
    required this.darkSettings,
  });

  /// [gift] The gift
  final UpgradedGift gift;

  /// [lightSettings] Theme settings for a light chat theme
  final ThemeSettings lightSettings;

  /// [darkSettings] Theme settings for a dark chat theme
  final ThemeSettings darkSettings;

  static const String constructor = 'giftChatTheme';

  static GiftChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftChatTheme(
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
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
        'gift': gift.toJson(),
        'light_settings': lightSettings.toJson(),
        'dark_settings': darkSettings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftChatTheme &&
          const DeepCollectionEquality().equals(other.gift, gift) &&
          const DeepCollectionEquality()
              .equals(other.lightSettings, lightSettings) &&
          const DeepCollectionEquality()
              .equals(other.darkSettings, darkSettings));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(gift),
        const DeepCollectionEquality().hash(lightSettings),
        const DeepCollectionEquality().hash(darkSettings)
      ]);
}
