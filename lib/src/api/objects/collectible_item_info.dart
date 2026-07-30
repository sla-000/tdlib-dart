// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a collectible item and its last purchase
@immutable
class CollectibleItemInfo extends TdObject {
  const CollectibleItemInfo({
    required this.purchaseDate,
    required this.currency,
    required this.amount,
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.url,
  });

  /// [purchaseDate] Point in time (Unix timestamp) when the item was purchased
  final int purchaseDate;

  /// [currency] Currency for the paid amount
  final String currency;

  /// [amount] The paid amount, in the smallest units of the currency
  final int amount;

  /// [cryptocurrency] Cryptocurrency used to pay for the item
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The paid amount, in the smallest units of the
  /// cryptocurrency
  final int cryptocurrencyAmount;

  /// [url] Individual URL for the item on https://fragment.com
  final String url;

  static const String constructor = 'collectibleItemInfo';

  static CollectibleItemInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CollectibleItemInfo(
      purchaseDate: (json['purchase_date'] as int?) ?? 0,
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      cryptocurrency: (json['cryptocurrency'] as String?) ?? '',
      cryptocurrencyAmount: (json['cryptocurrency_amount'] is int
              ? json['cryptocurrency_amount'] as int
              : int.tryParse(
                  json['cryptocurrency_amount']?.toString() ?? '')) ??
          0,
      url: (json['url'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'purchase_date': purchaseDate,
        'currency': currency,
        'amount': amount,
        'cryptocurrency': cryptocurrency,
        'cryptocurrency_amount': cryptocurrencyAmount.toString(),
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CollectibleItemInfo &&
          const DeepCollectionEquality()
              .equals(other.purchaseDate, purchaseDate) &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality().equals(other.amount, amount) &&
          const DeepCollectionEquality()
              .equals(other.cryptocurrency, cryptocurrency) &&
          const DeepCollectionEquality()
              .equals(other.cryptocurrencyAmount, cryptocurrencyAmount) &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(purchaseDate),
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(cryptocurrency),
        const DeepCollectionEquality().hash(cryptocurrencyAmount),
        const DeepCollectionEquality().hash(url)
      ]);
}
