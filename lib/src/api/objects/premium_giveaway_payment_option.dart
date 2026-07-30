// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an option for creating of Telegram Premium giveaway or manual
/// distribution of Telegram Premium among chat members. Use
/// telegramPaymentPurposePremiumGiftCodes or
/// telegramPaymentPurposePremiumGiveaway for out-of-store payments
@immutable
class PremiumGiveawayPaymentOption extends TdObject {
  const PremiumGiveawayPaymentOption({
    required this.currency,
    required this.amount,
    required this.winnerCount,
    required this.monthCount,
    required this.storeProductId,
    required this.storeProductQuantity,
  });

  /// [currency] ISO 4217 currency code for Telegram Premium gift code payment
  final String currency;

  /// [amount] The amount to pay, in the smallest units of the currency
  final int amount;

  /// [winnerCount] Number of users which will be able to activate the gift
  /// codes
  final int winnerCount;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active
  final int monthCount;

  /// [storeProductId] Identifier of the store product associated with the
  /// option; may be empty if none
  final String storeProductId;

  /// [storeProductQuantity] Number of times the store product must be paid
  final int storeProductQuantity;

  static const String constructor = 'premiumGiveawayPaymentOption';

  static PremiumGiveawayPaymentOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiveawayPaymentOption(
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      winnerCount: json['winner_count'] as int,
      monthCount: json['month_count'] as int,
      storeProductId: json['store_product_id'] as String,
      storeProductQuantity: json['store_product_quantity'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'currency': currency,
        'amount': amount,
        'winner_count': winnerCount,
        'month_count': monthCount,
        'store_product_id': storeProductId,
        'store_product_quantity': storeProductQuantity,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PremiumGiveawayPaymentOption &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality().equals(other.amount, amount) &&
          const DeepCollectionEquality()
              .equals(other.winnerCount, winnerCount) &&
          const DeepCollectionEquality().equals(other.monthCount, monthCount) &&
          const DeepCollectionEquality()
              .equals(other.storeProductId, storeProductId) &&
          const DeepCollectionEquality()
              .equals(other.storeProductQuantity, storeProductQuantity));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(winnerCount),
        const DeepCollectionEquality().hash(monthCount),
        const DeepCollectionEquality().hash(storeProductId),
        const DeepCollectionEquality().hash(storeProductQuantity)
      ]);
}
