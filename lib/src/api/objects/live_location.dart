// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A live location
@immutable
class LiveLocation extends TdObject {
  const LiveLocation({
    required this.location,
    required this.livePeriod,
    required this.heading,
    required this.proximityAlertRadius,
  });

  /// [location] The current location
  final Location location;

  /// [livePeriod] Time relative to the message send date, for which the
  /// location can be updated, in seconds; if 0x7FFFFFFF, then location can be
  /// updated forever
  final int livePeriod;

  /// [heading] The direction in which the location moves, in degrees; 1-360; 0
  /// if unknown
  final int heading;

  /// [proximityAlertRadius] The maximum distance to another chat member for
  /// proximity alerts, in meters (0-100000). 0 if the notification is disabled.
  /// Can't be enabled in direct messages chats, channels and Saved Messages.
  /// Available only to the message sender
  final int proximityAlertRadius;

  static const String constructor = 'liveLocation';

  static LiveLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LiveLocation(
      location: Location.fromJson(json['location'] as Map<String, dynamic>?)!,
      livePeriod: json['live_period'] as int,
      heading: json['heading'] as int,
      proximityAlertRadius: json['proximity_alert_radius'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location.toJson(),
        'live_period': livePeriod,
        'heading': heading,
        'proximity_alert_radius': proximityAlertRadius,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LiveLocation &&
          const DeepCollectionEquality().equals(other.location, location) &&
          const DeepCollectionEquality().equals(other.livePeriod, livePeriod) &&
          const DeepCollectionEquality().equals(other.heading, heading) &&
          const DeepCollectionEquality()
              .equals(other.proximityAlertRadius, proximityAlertRadius));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(livePeriod),
        const DeepCollectionEquality().hash(heading),
        const DeepCollectionEquality().hash(proximityAlertRadius)
      ]);
}
