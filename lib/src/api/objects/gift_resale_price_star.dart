// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes price of a resold gift in Telegram Stars
@immutable
class GiftResalePriceStar extends GiftResalePrice {
  const GiftResalePriceStar({
    required this.starCount,
  });

  /// [starCount] The Telegram Star amount expected to be paid for the gift.
  /// Must be in the range
  /// getOption("gift_resale_star_count_min")-getOption("gift_resale_star_count_max")
  /// for gifts put for resale
  final int starCount;

  static const String constructor = 'giftResalePriceStar';

  static GiftResalePriceStar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftResalePriceStar(
      starCount: json['star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftResalePriceStar &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(starCount)]);
}
