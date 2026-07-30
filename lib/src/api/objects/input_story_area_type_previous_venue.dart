// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An area pointing to a venue already added to the story
@immutable
class InputStoryAreaTypePreviousVenue extends InputStoryAreaType {
  const InputStoryAreaTypePreviousVenue({
    required this.venueProvider,
    required this.venueId,
  });

  /// [venueProvider] Provider of the venue
  final String venueProvider;

  /// [venueId] Identifier of the venue in the provider database
  final String venueId;

  static const String constructor = 'inputStoryAreaTypePreviousVenue';

  static InputStoryAreaTypePreviousVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreaTypePreviousVenue(
      venueProvider: (json['venue_provider'] as String?) ?? '',
      venueId: (json['venue_id'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'venue_provider': venueProvider,
        'venue_id': venueId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputStoryAreaTypePreviousVenue &&
          const DeepCollectionEquality()
              .equals(other.venueProvider, venueProvider) &&
          const DeepCollectionEquality().equals(other.venueId, venueId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(venueProvider),
        const DeepCollectionEquality().hash(venueId)
      ]);
}
