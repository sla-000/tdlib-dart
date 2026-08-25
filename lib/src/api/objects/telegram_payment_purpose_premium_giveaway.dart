// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user creating a Telegram Premium giveaway
@immutable
class TelegramPaymentPurposePremiumGiveaway extends TelegramPaymentPurpose {
  const TelegramPaymentPurposePremiumGiveaway({
    required this.parameters,
    required this.currency,
    required this.amount,
    required this.winnerCount,
    required this.monthCount,
  });

  /// [parameters] Giveaway parameters
  final GiveawayParameters parameters;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [winnerCount] Number of users who will be able to activate the gift codes
  final int winnerCount;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active for the users
  final int monthCount;

  static const String constructor = 'telegramPaymentPurposePremiumGiveaway';

  static TelegramPaymentPurposePremiumGiveaway? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TelegramPaymentPurposePremiumGiveaway(
      parameters: GiveawayParameters.fromJson(
          json['parameters'] as Map<String, dynamic>?)!,
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      winnerCount: (json['winner_count'] as int?) ?? 0,
      monthCount: (json['month_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'parameters': parameters.toJson(),
        'currency': currency,
        'amount': amount,
        'winner_count': winnerCount,
        'month_count': monthCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TelegramPaymentPurposePremiumGiveaway &&
          const DeepCollectionEquality().equals(other.parameters, parameters) &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality().equals(other.amount, amount) &&
          const DeepCollectionEquality()
              .equals(other.winnerCount, winnerCount) &&
          const DeepCollectionEquality().equals(other.monthCount, monthCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(parameters),
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(winnerCount),
        const DeepCollectionEquality().hash(monthCount)
      ]);
}
