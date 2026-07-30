// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with a live location
@immutable
class MessageLiveLocation extends MessageContent {
  const MessageLiveLocation({
    required this.location,
    required this.expiresIn,
  });

  /// [location] The current location
  final LiveLocation location;

  /// [expiresIn] Left time for which the location can be updated, in seconds.
  /// If 0, then the location can't be updated anymore. The update
  /// updateMessageContent is not sent when this field changes
  final int expiresIn;

  static const String constructor = 'messageLiveLocation';

  static MessageLiveLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageLiveLocation(
      location:
          LiveLocation.fromJson(json['location'] as Map<String, dynamic>?)!,
      expiresIn: (json['expires_in'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location.toJson(),
        'expires_in': expiresIn,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageLiveLocation &&
          const DeepCollectionEquality().equals(other.location, location) &&
          const DeepCollectionEquality().equals(other.expiresIn, expiresIn));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(expiresIn)
      ]);
}
