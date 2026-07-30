// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a location of a business
@immutable
class BusinessLocation extends TdObject {
  const BusinessLocation({
    this.location,
    required this.address,
  });

  /// [location] The location; may be null if not specified
  final Location? location;

  /// [address] Location address; 1-96 characters
  final String address;

  static const String constructor = 'businessLocation';

  static BusinessLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessLocation(
      location: Location.fromJson(json['location'] as Map<String, dynamic>?),
      address: (json['address'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location?.toJson(),
        'address': address,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BusinessLocation &&
          const DeepCollectionEquality().equals(other.location, location) &&
          const DeepCollectionEquality().equals(other.address, address));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(address)
      ]);
}
