// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an option for gifting Telegram Premium to a user. Use
/// telegramPaymentPurposePremiumGift for out-of-store payments or payments in
/// Telegram Stars
@immutable
class PremiumGiftPaymentOption extends TdObject {
  const PremiumGiftPaymentOption({
    required this.currency,
    required this.amount,
    required this.starCount,
    required this.discountPercentage,
    required this.monthCount,
    required this.storeProductId,
    this.sticker,
  });

  /// [currency] ISO 4217 currency code for the payment
  final String currency;

  /// [amount] The amount to pay, in the smallest units of the currency
  final int amount;

  /// [starCount] The alternative Telegram Star amount to pay; 0 if payment in
  /// Telegram Stars is not possible
  final int starCount;

  /// [discountPercentage] The discount associated with this option, as a
  /// percentage
  final int discountPercentage;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active
  final int monthCount;

  /// [storeProductId] Identifier of the store product associated with the
  /// option
  final String storeProductId;

  /// [sticker] A sticker to be shown along with the option; may be null if
  /// unknown
  final Sticker? sticker;

  static const String constructor = 'premiumGiftPaymentOption';

  static PremiumGiftPaymentOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiftPaymentOption(
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      starCount: json['star_count'] as int,
      discountPercentage: json['discount_percentage'] as int,
      monthCount: json['month_count'] as int,
      storeProductId: json['store_product_id'] as String,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'currency': currency,
        'amount': amount,
        'star_count': starCount,
        'discount_percentage': discountPercentage,
        'month_count': monthCount,
        'store_product_id': storeProductId,
        'sticker': sticker?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PremiumGiftPaymentOption &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality().equals(other.amount, amount) &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality()
              .equals(other.discountPercentage, discountPercentage) &&
          const DeepCollectionEquality().equals(other.monthCount, monthCount) &&
          const DeepCollectionEquality()
              .equals(other.storeProductId, storeProductId) &&
          const DeepCollectionEquality().equals(other.sticker, sticker));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(discountPercentage),
        const DeepCollectionEquality().hash(monthCount),
        const DeepCollectionEquality().hash(storeProductId),
        const DeepCollectionEquality().hash(sticker)
      ]);
}
