// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents information about a venue
@immutable
class InlineQueryResultVenue extends InlineQueryResult {
  const InlineQueryResultVenue({
    required this.id,
    required this.venue,
    this.thumbnail,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [venue] Venue result
  final Venue venue;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;

  static const String constructor = 'inlineQueryResultVenue';

  static InlineQueryResultVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultVenue(
      id: json['id'] as String,
      venue: Venue.fromJson(json['venue'] as Map<String, dynamic>?)!,
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'venue': venue.toJson(),
        'thumbnail': thumbnail?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineQueryResultVenue &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.venue, venue) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(venue),
        const DeepCollectionEquality().hash(thumbnail)
      ]);
}
