// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes the current weather
@immutable
class CurrentWeather extends TdObject {
  const CurrentWeather({
    required this.temperature,
    required this.emoji,
  });

  /// [temperature] Temperature, in degree Celsius
  final double temperature;

  /// [emoji] Emoji representing the weather
  final String emoji;

  static const String constructor = 'currentWeather';

  static CurrentWeather? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CurrentWeather(
      temperature: (json['temperature'] as num).toDouble(),
      emoji: json['emoji'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'temperature': temperature,
        'emoji': emoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CurrentWeather &&
          const DeepCollectionEquality()
              .equals(other.temperature, temperature) &&
          const DeepCollectionEquality().equals(other.emoji, emoji));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(temperature),
        const DeepCollectionEquality().hash(emoji)
      ]);
}
