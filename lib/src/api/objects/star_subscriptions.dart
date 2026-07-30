// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of Telegram Star subscriptions
@immutable
class StarSubscriptions extends TdObject {
  const StarSubscriptions({
    required this.starAmount,
    required this.subscriptions,
    required this.requiredStarCount,
    required this.nextOffset,
  });

  /// [starAmount] The amount of owned Telegram Stars
  final StarAmount starAmount;

  /// [subscriptions] List of subscriptions for Telegram Stars
  final List<StarSubscription> subscriptions;

  /// [requiredStarCount] The number of Telegram Stars required to buy to extend
  /// subscriptions expiring soon
  final int requiredStarCount;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'starSubscriptions';

  static StarSubscriptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarSubscriptions(
      starAmount:
          StarAmount.fromJson(json['star_amount'] as Map<String, dynamic>?)!,
      subscriptions: List<StarSubscription>.from(
          ((json['subscriptions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  StarSubscription.fromJson(item as Map<String, dynamic>?))
              .toList()),
      requiredStarCount: (json['required_star_count'] as int?) ?? 0,
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_amount': starAmount.toJson(),
        'subscriptions': subscriptions.map((item) => item.toJson()).toList(),
        'required_star_count': requiredStarCount,
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarSubscriptions &&
          const DeepCollectionEquality().equals(other.starAmount, starAmount) &&
          const DeepCollectionEquality()
              .equals(other.subscriptions, subscriptions) &&
          const DeepCollectionEquality()
              .equals(other.requiredStarCount, requiredStarCount) &&
          const DeepCollectionEquality().equals(other.nextOffset, nextOffset));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(starAmount),
        const DeepCollectionEquality().hash(subscriptions),
        const DeepCollectionEquality().hash(requiredStarCount),
        const DeepCollectionEquality().hash(nextOffset)
      ]);
}
