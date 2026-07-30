// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains examples of possible upgraded gifts for the given regular gift
@immutable
class GiftUpgradePreview extends TdObject {
  const GiftUpgradePreview({
    required this.models,
    required this.symbols,
    required this.backdrops,
    required this.prices,
    required this.nextPrices,
  });

  /// [models] Examples of possible models that can be chosen for the gift after
  /// upgrade
  final List<UpgradedGiftModel> models;

  /// [symbols] Examples of possible symbols that can be chosen for the gift
  /// after upgrade
  final List<UpgradedGiftSymbol> symbols;

  /// [backdrops] Examples of possible backdrops that can be chosen for the gift
  /// after upgrade
  final List<UpgradedGiftBackdrop> backdrops;

  /// [prices] Examples of price for gift upgrade from the maximum price to the
  /// minimum price
  final List<GiftUpgradePrice> prices;

  /// [nextPrices] Next changes for the price for gift upgrade with more
  /// granularity than in prices
  final List<GiftUpgradePrice> nextPrices;

  static const String constructor = 'giftUpgradePreview';

  static GiftUpgradePreview? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftUpgradePreview(
      models: List<UpgradedGiftModel>.from(
          ((json['models'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => UpgradedGiftModel.fromJson(item))
              .toList()),
      symbols: List<UpgradedGiftSymbol>.from(
          ((json['symbols'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => UpgradedGiftSymbol.fromJson(item))
              .toList()),
      backdrops: List<UpgradedGiftBackdrop>.from(
          ((json['backdrops'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => UpgradedGiftBackdrop.fromJson(item))
              .toList()),
      prices: List<GiftUpgradePrice>.from(
          ((json['prices'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => GiftUpgradePrice.fromJson(item))
              .toList()),
      nextPrices: List<GiftUpgradePrice>.from(
          ((json['next_prices'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => GiftUpgradePrice.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'models': models.map((item) => item.toJson()).toList(),
        'symbols': symbols.map((item) => item.toJson()).toList(),
        'backdrops': backdrops.map((item) => item.toJson()).toList(),
        'prices': prices.map((item) => item.toJson()).toList(),
        'next_prices': nextPrices.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftUpgradePreview &&
          const DeepCollectionEquality().equals(other.models, models) &&
          const DeepCollectionEquality().equals(other.symbols, symbols) &&
          const DeepCollectionEquality().equals(other.backdrops, backdrops) &&
          const DeepCollectionEquality().equals(other.prices, prices) &&
          const DeepCollectionEquality().equals(other.nextPrices, nextPrices));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(models),
        const DeepCollectionEquality().hash(symbols),
        const DeepCollectionEquality().hash(backdrops),
        const DeepCollectionEquality().hash(prices),
        const DeepCollectionEquality().hash(nextPrices)
      ]);
}
