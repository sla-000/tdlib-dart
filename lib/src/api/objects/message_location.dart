// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with a location
@immutable
class MessageLocation extends MessageContent {
  const MessageLocation({
    required this.location,
    required this.livePeriod,
    required this.expiresIn,
    required this.heading,
    required this.proximityAlertRadius,
  });

  /// [location] The location description
  final Location location;

  /// [livePeriod] Time relative to the message send date, for which the
  /// location can be updated, in seconds; if 0x7FFFFFFF, then location can be
  /// updated forever
  final int livePeriod;

  /// [expiresIn] Left time for which the location can be updated, in seconds.
  /// If 0, then the location can't be updated anymore. The update
  /// updateMessageContent is not sent when this field changes
  final int expiresIn;

  /// [heading] For live locations, a direction in which the location moves, in
  /// degrees; 1-360. If 0 the direction is unknown
  final int heading;

  /// [proximityAlertRadius] For live locations, a maximum distance to another
  /// chat member for proximity alerts, in meters (0-100000). 0 if the
  /// notification is disabled. Available only to the message sender
  final int proximityAlertRadius;

  static const String constructor = 'messageLocation';

  static MessageLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageLocation(
      location: Location.fromJson(json['location'] as Map<String, dynamic>?)!,
      livePeriod: (json['live_period'] as int?) ?? 0,
      expiresIn: (json['expires_in'] as int?) ?? 0,
      heading: (json['heading'] as int?) ?? 0,
      proximityAlertRadius: (json['proximity_alert_radius'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location.toJson(),
        'live_period': livePeriod,
        'expires_in': expiresIn,
        'heading': heading,
        'proximity_alert_radius': proximityAlertRadius,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageLocation &&
          const DeepCollectionEquality().equals(other.location, location) &&
          const DeepCollectionEquality().equals(other.livePeriod, livePeriod) &&
          const DeepCollectionEquality().equals(other.expiresIn, expiresIn) &&
          const DeepCollectionEquality().equals(other.heading, heading) &&
          const DeepCollectionEquality()
              .equals(other.proximityAlertRadius, proximityAlertRadius));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(livePeriod),
        const DeepCollectionEquality().hash(expiresIn),
        const DeepCollectionEquality().hash(heading),
        const DeepCollectionEquality().hash(proximityAlertRadius)
      ]);
}
