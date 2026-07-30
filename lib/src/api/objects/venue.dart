// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a venue
@immutable
class Venue extends TdObject {
  const Venue({
    required this.location,
    required this.title,
    required this.address,
    required this.provider,
    required this.id,
    required this.type,
  });

  /// [location] Venue location; as defined by the sender
  final Location location;

  /// [title] Venue name; as defined by the sender
  final String title;

  /// [address] Venue address; as defined by the sender
  final String address;

  /// [provider] Provider of the venue database; as defined by the sender.
  /// Currently, only "foursquare" and "gplaces" (Google Places) need to be
  /// supported
  final String provider;

  /// [id] Identifier of the venue in the provider database; as defined by the
  /// sender
  final String id;

  /// [type] Type of the venue in the provider database; as defined by the
  /// sender
  final String type;

  static const String constructor = 'venue';

  static Venue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Venue(
      location: Location.fromJson(json['location'] as Map<String, dynamic>?)!,
      title: (json['title'] as String?) ?? '',
      address: (json['address'] as String?) ?? '',
      provider: (json['provider'] as String?) ?? '',
      id: (json['id'] as String?) ?? '',
      type: (json['type'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location.toJson(),
        'title': title,
        'address': address,
        'provider': provider,
        'id': id,
        'type': type,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Venue &&
          const DeepCollectionEquality().equals(other.location, location) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.address, address) &&
          const DeepCollectionEquality().equals(other.provider, provider) &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(address),
        const DeepCollectionEquality().hash(provider),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(type)
      ]);
}
