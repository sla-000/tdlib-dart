// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A venue
@immutable
class PollMediaVenue extends PollMedia {
  const PollMediaVenue({
    required this.venue,
  });

  /// [venue] The venue
  final Venue venue;

  static const String constructor = 'pollMediaVenue';

  static PollMediaVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollMediaVenue(
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
          other is PollMediaVenue &&
          const DeepCollectionEquality().equals(other.venue, venue));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(venue)]);
}
