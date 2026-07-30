// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about public post search limits
@immutable
class PublicPostSearchLimits extends TdObject {
  const PublicPostSearchLimits({
    required this.dailyFreeQueryCount,
    required this.remainingFreeQueryCount,
    required this.nextFreeQueryIn,
    required this.starCount,
    required this.isCurrentQueryFree,
  });

  /// [dailyFreeQueryCount] Number of queries that can be sent daily for free
  final int dailyFreeQueryCount;

  /// [remainingFreeQueryCount] Number of remaining free queries today
  final int remainingFreeQueryCount;

  /// [nextFreeQueryIn] Amount of time till the next free query can be sent; 0
  /// if it can be sent now
  final int nextFreeQueryIn;

  /// [starCount] Number of Telegram Stars that must be paid for each non-free
  /// query
  final int starCount;

  /// [isCurrentQueryFree] True, if the search for the specified query isn't
  /// charged
  final bool isCurrentQueryFree;

  static const String constructor = 'publicPostSearchLimits';

  static PublicPostSearchLimits? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicPostSearchLimits(
      dailyFreeQueryCount: (json['daily_free_query_count'] as int?) ?? 0,
      remainingFreeQueryCount:
          (json['remaining_free_query_count'] as int?) ?? 0,
      nextFreeQueryIn: (json['next_free_query_in'] as int?) ?? 0,
      starCount: (json['star_count'] as int?) ?? 0,
      isCurrentQueryFree: (json['is_current_query_free'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'daily_free_query_count': dailyFreeQueryCount,
        'remaining_free_query_count': remainingFreeQueryCount,
        'next_free_query_in': nextFreeQueryIn,
        'star_count': starCount,
        'is_current_query_free': isCurrentQueryFree,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PublicPostSearchLimits &&
          const DeepCollectionEquality()
              .equals(other.dailyFreeQueryCount, dailyFreeQueryCount) &&
          const DeepCollectionEquality()
              .equals(other.remainingFreeQueryCount, remainingFreeQueryCount) &&
          const DeepCollectionEquality()
              .equals(other.nextFreeQueryIn, nextFreeQueryIn) &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality()
              .equals(other.isCurrentQueryFree, isCurrentQueryFree));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(dailyFreeQueryCount),
        const DeepCollectionEquality().hash(remainingFreeQueryCount),
        const DeepCollectionEquality().hash(nextFreeQueryIn),
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(isCurrentQueryFree)
      ]);
}
