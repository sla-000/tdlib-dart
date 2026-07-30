// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the current weather in the given location
/// Returns [CurrentWeather]
@immutable
class GetCurrentWeather extends TdFunction {
  const GetCurrentWeather({
    required this.location,
  });

  /// [location] The location
  final Location location;

  static const String constructor = 'getCurrentWeather';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetCurrentWeather &&
          const DeepCollectionEquality().equals(other.location, location));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(location)]);
}
