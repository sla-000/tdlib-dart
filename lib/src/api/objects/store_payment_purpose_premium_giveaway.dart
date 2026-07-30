// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user creating a Telegram Premium giveaway
@immutable
class StorePaymentPurposePremiumGiveaway extends StorePaymentPurpose {
  const StorePaymentPurposePremiumGiveaway({
    required this.parameters,
    required this.currency,
    required this.amount,
  });

  /// [parameters] Giveaway parameters
  final GiveawayParameters parameters;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  static const String constructor = 'storePaymentPurposePremiumGiveaway';

  static StorePaymentPurposePremiumGiveaway? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposePremiumGiveaway(
      parameters: GiveawayParameters.fromJson(
          json['parameters'] as Map<String, dynamic>?)!,
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'parameters': parameters.toJson(),
        'currency': currency,
        'amount': amount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StorePaymentPurposePremiumGiveaway &&
          const DeepCollectionEquality().equals(other.parameters, parameters) &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality().equals(other.amount, amount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(parameters),
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(amount)
      ]);
}
