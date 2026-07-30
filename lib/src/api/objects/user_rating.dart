import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      level: json['level'] as int,
      isMaximumLevelReached: json['is_maximum_level_reached'] as bool,
      rating: json['rating'] as int,
      currentLevelRating: json['current_level_rating'] as int,
      nextLevelRating: json['next_level_rating'] as int,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
