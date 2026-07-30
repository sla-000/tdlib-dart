// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Operation has failed, because price has increased. If the price has
/// decreased, then the buying will succeed anyway
@immutable
class GiftResaleResultPriceIncreased extends GiftResaleResult {
  const GiftResaleResultPriceIncreased({
    required this.price,
  });

  /// [price] New price for the gift
  final GiftResalePrice price;

  static const String constructor = 'giftResaleResultPriceIncreased';

  static GiftResaleResultPriceIncreased? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftResaleResultPriceIncreased(
      price: GiftResalePrice.fromJson(json['price'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'price': price.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftResaleResultPriceIncreased &&
          const DeepCollectionEquality().equals(other.price, price));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(price)]);
}
