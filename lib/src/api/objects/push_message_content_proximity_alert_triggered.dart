// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A user in the chat came within proximity alert range from the current user
@immutable
class PushMessageContentProximityAlertTriggered extends PushMessageContent {
  const PushMessageContentProximityAlertTriggered({
    required this.distance,
  });

  /// [distance] The distance to the user
  final int distance;

  static const String constructor = 'pushMessageContentProximityAlertTriggered';

  static PushMessageContentProximityAlertTriggered? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentProximityAlertTriggered(
      distance: json['distance'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'distance': distance,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentProximityAlertTriggered &&
          const DeepCollectionEquality().equals(other.distance, distance));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(distance)]);
}
