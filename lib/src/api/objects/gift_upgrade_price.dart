// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a price required to pay to upgrade a gift
@immutable
class GiftUpgradePrice extends TdObject {
  const GiftUpgradePrice({
    required this.date,
    required this.starCount,
  });

  /// [date] Point in time (Unix timestamp) when the price will be in effect
  final int date;

  /// [starCount] The Telegram Star amount required to pay to upgrade the gift
  final int starCount;

  static const String constructor = 'giftUpgradePrice';

  static GiftUpgradePrice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftUpgradePrice(
      date: json['date'] as int,
      starCount: json['star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'date': date,
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftUpgradePrice &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(starCount)
      ]);
}
