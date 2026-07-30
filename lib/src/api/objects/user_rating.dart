// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains description of user rating
@immutable
class UserRating extends TdObject {
  const UserRating({
    required this.level,
    required this.isMaximumLevelReached,
    required this.rating,
    required this.currentLevelRating,
    required this.nextLevelRating,
  });

  /// [level] The level of the user; may be negative
  final int level;

  /// [isMaximumLevelReached] True, if the maximum level is reached
  final bool isMaximumLevelReached;

  /// [rating] Numerical value of the rating
  final int rating;

  /// [currentLevelRating] The rating required for the current level
  final int currentLevelRating;

  /// [nextLevelRating] The rating required for the next level; 0 if the maximum
  /// level is reached
  final int nextLevelRating;

  static const String constructor = 'userRating';

  static UserRating? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserRating(
      level: (json['level'] as int?) ?? 0,
      isMaximumLevelReached:
          (json['is_maximum_level_reached'] as bool?) ?? false,
      rating: (json['rating'] as int?) ?? 0,
      currentLevelRating: (json['current_level_rating'] as int?) ?? 0,
      nextLevelRating: (json['next_level_rating'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'level': level,
        'is_maximum_level_reached': isMaximumLevelReached,
        'rating': rating,
        'current_level_rating': currentLevelRating,
        'next_level_rating': nextLevelRating,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UserRating &&
          const DeepCollectionEquality().equals(other.level, level) &&
          const DeepCollectionEquality()
              .equals(other.isMaximumLevelReached, isMaximumLevelReached) &&
          const DeepCollectionEquality().equals(other.rating, rating) &&
          const DeepCollectionEquality()
              .equals(other.currentLevelRating, currentLevelRating) &&
          const DeepCollectionEquality()
              .equals(other.nextLevelRating, nextLevelRating));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(level),
        const DeepCollectionEquality().hash(isMaximumLevelReached),
        const DeepCollectionEquality().hash(rating),
        const DeepCollectionEquality().hash(currentLevelRating),
        const DeepCollectionEquality().hash(nextLevelRating)
      ]);
}
