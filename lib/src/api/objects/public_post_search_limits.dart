import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      dailyFreeQueryCount: json['daily_free_query_count'] as int,
      remainingFreeQueryCount: json['remaining_free_query_count'] as int,
      nextFreeQueryIn: json['next_free_query_in'] as int,
      starCount: json['star_count'] as int,
      isCurrentQueryFree: json['is_current_query_free'] as bool,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
