// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes subscription plan paid in Telegram Stars
@immutable
class StarSubscriptionPricing extends TdObject {
  const StarSubscriptionPricing({
    required this.period,
    required this.starCount,
  });

  /// [period] The number of seconds between consecutive Telegram Star debiting
  final int period;

  /// [starCount] The Telegram Star amount that must be paid for each period
  final int starCount;

  static const String constructor = 'starSubscriptionPricing';

  static StarSubscriptionPricing? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarSubscriptionPricing(
      period: (json['period'] as int?) ?? 0,
      starCount: (json['star_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'period': period,
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarSubscriptionPricing &&
          const DeepCollectionEquality().equals(other.period, period) &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(period),
        const DeepCollectionEquality().hash(starCount)
      ]);
}
