import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
