// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An area pointing to a venue
@immutable
class StoryAreaTypeVenue extends StoryAreaType {
  const StoryAreaTypeVenue({
    required this.venue,
  });

  /// [venue] Information about the venue
  final Venue venue;

  static const String constructor = 'storyAreaTypeVenue';

  static StoryAreaTypeVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaTypeVenue(
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
          other is StoryAreaTypeVenue &&
          const DeepCollectionEquality().equals(other.venue, venue));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(venue)]);
}
