// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about value of an upgraded gift
@immutable
class UpgradedGiftValueInfo extends TdObject {
  const UpgradedGiftValueInfo({
    required this.currency,
    required this.value,
    required this.isValueAverage,
    required this.initialSaleDate,
    required this.initialSaleStarCount,
    required this.initialSalePrice,
    required this.lastSaleDate,
    required this.lastSalePrice,
    required this.isLastSaleOnFragment,
    required this.minimumPrice,
    required this.averageSalePrice,
    required this.telegramListedGiftCount,
    required this.fragmentListedGiftCount,
    required this.fragmentUrl,
  });

  /// [currency] ISO 4217 currency code of the currency in which the prices are
  /// represented
  final String currency;

  /// [value] Estimated value of the gift; in the smallest units of the currency
  final int value;

  /// [isValueAverage] True, if the value is calculated as average value of
  /// similar sold gifts. Otherwise, it is based on the sale price of the gift
  final bool isValueAverage;

  /// [initialSaleDate] Point in time (Unix timestamp) when the corresponding
  /// regular gift was originally purchased
  final int initialSaleDate;

  /// [initialSaleStarCount] The Telegram Star amount that was paid for the gift
  final int initialSaleStarCount;

  /// [initialSalePrice] Initial price of the gift; in the smallest units of the
  /// currency
  final int initialSalePrice;

  /// [lastSaleDate] Point in time (Unix timestamp) when the upgraded gift was
  /// purchased last time; 0 if never
  final int lastSaleDate;

  /// [lastSalePrice] Last purchase price of the gift; in the smallest units of
  /// the currency; 0 if the gift has never been resold
  final int lastSalePrice;

  /// [isLastSaleOnFragment] True, if the last sale was completed on Fragment
  final bool isLastSaleOnFragment;

  /// [minimumPrice] The current minimum price of gifts upgraded from the same
  /// gift; in the smallest units of the currency; 0 if there are no such gifts
  final int minimumPrice;

  /// [averageSalePrice] The average sale price in the last month of gifts
  /// upgraded from the same gift; in the smallest units of the currency; 0 if
  /// there were no such sales
  final int averageSalePrice;

  /// [telegramListedGiftCount] Number of gifts upgraded from the same gift
  /// being resold on Telegram
  final int telegramListedGiftCount;

  /// [fragmentListedGiftCount] Number of gifts upgraded from the same gift
  /// being resold on Fragment
  final int fragmentListedGiftCount;

  /// [fragmentUrl] The HTTPS link to the Fragment for the gift; may be empty if
  /// there are no such gifts being sold on Fragment
  final String fragmentUrl;

  static const String constructor = 'upgradedGiftValueInfo';

  static UpgradedGiftValueInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftValueInfo(
      currency: (json['currency'] as String?) ?? '',
      value: (json['value'] as int?) ?? 0,
      isValueAverage: (json['is_value_average'] as bool?) ?? false,
      initialSaleDate: (json['initial_sale_date'] as int?) ?? 0,
      initialSaleStarCount: (json['initial_sale_star_count'] as int?) ?? 0,
      initialSalePrice: (json['initial_sale_price'] as int?) ?? 0,
      lastSaleDate: (json['last_sale_date'] as int?) ?? 0,
      lastSalePrice: (json['last_sale_price'] as int?) ?? 0,
      isLastSaleOnFragment:
          (json['is_last_sale_on_fragment'] as bool?) ?? false,
      minimumPrice: (json['minimum_price'] as int?) ?? 0,
      averageSalePrice: (json['average_sale_price'] as int?) ?? 0,
      telegramListedGiftCount:
          (json['telegram_listed_gift_count'] as int?) ?? 0,
      fragmentListedGiftCount:
          (json['fragment_listed_gift_count'] as int?) ?? 0,
      fragmentUrl: (json['fragment_url'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'currency': currency,
        'value': value,
        'is_value_average': isValueAverage,
        'initial_sale_date': initialSaleDate,
        'initial_sale_star_count': initialSaleStarCount,
        'initial_sale_price': initialSalePrice,
        'last_sale_date': lastSaleDate,
        'last_sale_price': lastSalePrice,
        'is_last_sale_on_fragment': isLastSaleOnFragment,
        'minimum_price': minimumPrice,
        'average_sale_price': averageSalePrice,
        'telegram_listed_gift_count': telegramListedGiftCount,
        'fragment_listed_gift_count': fragmentListedGiftCount,
        'fragment_url': fragmentUrl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftValueInfo &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality().equals(other.value, value) &&
          const DeepCollectionEquality()
              .equals(other.isValueAverage, isValueAverage) &&
          const DeepCollectionEquality()
              .equals(other.initialSaleDate, initialSaleDate) &&
          const DeepCollectionEquality()
              .equals(other.initialSaleStarCount, initialSaleStarCount) &&
          const DeepCollectionEquality()
              .equals(other.initialSalePrice, initialSalePrice) &&
          const DeepCollectionEquality()
              .equals(other.lastSaleDate, lastSaleDate) &&
          const DeepCollectionEquality()
              .equals(other.lastSalePrice, lastSalePrice) &&
          const DeepCollectionEquality()
              .equals(other.isLastSaleOnFragment, isLastSaleOnFragment) &&
          const DeepCollectionEquality()
              .equals(other.minimumPrice, minimumPrice) &&
          const DeepCollectionEquality()
              .equals(other.averageSalePrice, averageSalePrice) &&
          const DeepCollectionEquality()
              .equals(other.telegramListedGiftCount, telegramListedGiftCount) &&
          const DeepCollectionEquality()
              .equals(other.fragmentListedGiftCount, fragmentListedGiftCount) &&
          const DeepCollectionEquality()
              .equals(other.fragmentUrl, fragmentUrl));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(value),
        const DeepCollectionEquality().hash(isValueAverage),
        const DeepCollectionEquality().hash(initialSaleDate),
        const DeepCollectionEquality().hash(initialSaleStarCount),
        const DeepCollectionEquality().hash(initialSalePrice),
        const DeepCollectionEquality().hash(lastSaleDate),
        const DeepCollectionEquality().hash(lastSalePrice),
        const DeepCollectionEquality().hash(isLastSaleOnFragment),
        const DeepCollectionEquality().hash(minimumPrice),
        const DeepCollectionEquality().hash(averageSalePrice),
        const DeepCollectionEquality().hash(telegramListedGiftCount),
        const DeepCollectionEquality().hash(fragmentListedGiftCount),
        const DeepCollectionEquality().hash(fragmentUrl)
      ]);
}
