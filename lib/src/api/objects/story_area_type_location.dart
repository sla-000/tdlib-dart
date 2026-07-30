// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An area pointing to a location
@immutable
class StoryAreaTypeLocation extends StoryAreaType {
  const StoryAreaTypeLocation({
    required this.location,
    this.address,
  });

  /// [location] The location
  final Location location;

  /// [address] Address of the location; may be null if unknown
  final LocationAddress? address;

  static const String constructor = 'storyAreaTypeLocation';

  static StoryAreaTypeLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaTypeLocation(
      location: Location.fromJson(json['location'] as Map<String, dynamic>?)!,
      address:
          LocationAddress.fromJson(json['address'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location.toJson(),
        'address': address?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoryAreaTypeLocation &&
          const DeepCollectionEquality().equals(other.location, location) &&
          const DeepCollectionEquality().equals(other.address, address));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(address)
      ]);
}
