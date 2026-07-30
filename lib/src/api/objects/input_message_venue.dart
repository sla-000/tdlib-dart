// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with information about a venue
@immutable
class InputMessageVenue extends InputMessageContent {
  const InputMessageVenue({
    required this.venue,
  });

  /// [venue] Venue to send
  final Venue venue;

  static const String constructor = 'inputMessageVenue';

  static InputMessageVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVenue(
      venue: Venue.fromJson(json['venue'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'venue': venue.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputMessageVenue &&
          const DeepCollectionEquality().equals(other.venue, venue));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(venue)]);
}
