// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a location to which a chat is connected
@immutable
class ChatLocation extends TdObject {
  const ChatLocation({
    required this.location,
    required this.address,
  });

  /// [location] The location
  final Location location;

  /// [address] Location address; 1-64 characters, as defined by the chat owner
  final String address;

  static const String constructor = 'chatLocation';

  static ChatLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatLocation(
      location: Location.fromJson(json['location'] as Map<String, dynamic>?)!,
      address: (json['address'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location.toJson(),
        'address': address,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatLocation &&
          const DeepCollectionEquality().equals(other.location, location) &&
          const DeepCollectionEquality().equals(other.address, address));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(address)
      ]);
}
