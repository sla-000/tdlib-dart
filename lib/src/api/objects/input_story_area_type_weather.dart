// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An area with information about weather
@immutable
class InputStoryAreaTypeWeather extends InputStoryAreaType {
  const InputStoryAreaTypeWeather({
    required this.temperature,
    required this.emoji,
    required this.backgroundColor,
  });

  /// [temperature] Temperature, in degree Celsius
  final double temperature;

  /// [emoji] Emoji representing the weather
  final String emoji;

  /// [backgroundColor] A color of the area background in the ARGB format
  final int backgroundColor;

  static const String constructor = 'inputStoryAreaTypeWeather';

  static InputStoryAreaTypeWeather? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreaTypeWeather(
      temperature: (json['temperature'] as num).toDouble(),
      emoji: json['emoji'] as String,
      backgroundColor: json['background_color'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'temperature': temperature,
        'emoji': emoji,
        'background_color': backgroundColor,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputStoryAreaTypeWeather &&
          const DeepCollectionEquality()
              .equals(other.temperature, temperature) &&
          const DeepCollectionEquality().equals(other.emoji, emoji) &&
          const DeepCollectionEquality()
              .equals(other.backgroundColor, backgroundColor));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(temperature),
        const DeepCollectionEquality().hash(emoji),
        const DeepCollectionEquality().hash(backgroundColor)
      ]);
}
