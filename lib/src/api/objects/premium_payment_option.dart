// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an option for buying Telegram Premium to a user
@immutable
class PremiumPaymentOption extends TdObject {
  const PremiumPaymentOption({
    required this.currency,
    required this.amount,
    required this.discountPercentage,
    required this.monthCount,
    required this.storeProductId,
    this.paymentLink,
  });

  /// [currency] ISO 4217 currency code for Telegram Premium subscription
  /// payment
  final String currency;

  /// [amount] The amount to pay, in the smallest units of the currency
  final int amount;

  /// [discountPercentage] The discount associated with this option, as a
  /// percentage
  final int discountPercentage;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active. Use getPremiumInfoSticker to get the sticker to be used as
  /// representation of the Telegram Premium subscription
  final int monthCount;

  /// [storeProductId] Identifier of the store product associated with the
  /// option
  final String storeProductId;

  /// [paymentLink] An internal link to be opened for buying Telegram Premium to
  /// the user if store payment isn't possible; may be null if direct payment
  /// isn't available
  final InternalLinkType? paymentLink;

  static const String constructor = 'premiumPaymentOption';

  static PremiumPaymentOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumPaymentOption(
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      discountPercentage: (json['discount_percentage'] as int?) ?? 0,
      monthCount: (json['month_count'] as int?) ?? 0,
      storeProductId: (json['store_product_id'] as String?) ?? '',
      paymentLink: InternalLinkType.fromJson(
          json['payment_link'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'currency': currency,
        'amount': amount,
        'discount_percentage': discountPercentage,
        'month_count': monthCount,
        'store_product_id': storeProductId,
        'payment_link': paymentLink?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PremiumPaymentOption &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality().equals(other.amount, amount) &&
          const DeepCollectionEquality()
              .equals(other.discountPercentage, discountPercentage) &&
          const DeepCollectionEquality().equals(other.monthCount, monthCount) &&
          const DeepCollectionEquality()
              .equals(other.storeProductId, storeProductId) &&
          const DeepCollectionEquality()
              .equals(other.paymentLink, paymentLink));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(discountPercentage),
        const DeepCollectionEquality().hash(monthCount),
        const DeepCollectionEquality().hash(storeProductId),
        const DeepCollectionEquality().hash(paymentLink)
      ]);
}
