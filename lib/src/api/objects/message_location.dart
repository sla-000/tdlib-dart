// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with a location
@immutable
class MessageLocation extends MessageContent {
  const MessageLocation({
    required this.location,
  });

  /// [location] The location
  final Location location;

  static const String constructor = 'messageLocation';

  static MessageLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageLocation(
      location: Location.fromJson(json['location'] as Map<String, dynamic>?)!,
    );
  }

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
          other is MessageLocation &&
          const DeepCollectionEquality().equals(other.location, location));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(location)]);
}
