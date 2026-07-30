// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user buying Telegram Stars for other users
@immutable
class TelegramPaymentPurposeGiftedStars extends TelegramPaymentPurpose {
  const TelegramPaymentPurposeGiftedStars({
    required this.userId,
    required this.currency,
    required this.amount,
    required this.starCount,
  });

  /// [userId] Identifier of the user to which Telegram Stars are gifted
  final int userId;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [starCount] Number of bought Telegram Stars
  final int starCount;

  static const String constructor = 'telegramPaymentPurposeGiftedStars';

  static TelegramPaymentPurposeGiftedStars? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TelegramPaymentPurposeGiftedStars(
      userId: json['user_id'] as int,
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      starCount: json['star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'currency': currency,
        'amount': amount,
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TelegramPaymentPurposeGiftedStars &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality().equals(other.amount, amount) &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(starCount)
      ]);
}
