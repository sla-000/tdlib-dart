// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user buying Telegram Stars
@immutable
class TelegramPaymentPurposeStars extends TelegramPaymentPurpose {
  const TelegramPaymentPurposeStars({
    required this.currency,
    required this.amount,
    required this.starCount,
    required this.chatId,
  });

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [starCount] Number of bought Telegram Stars
  final int starCount;

  /// [chatId] Identifier of the chat that is supposed to receive the Telegram
  /// Stars; pass 0 if none
  final int chatId;

  static const String constructor = 'telegramPaymentPurposeStars';

  static TelegramPaymentPurposeStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TelegramPaymentPurposeStars(
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      starCount: json['star_count'] as int,
      chatId: json['chat_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'currency': currency,
        'amount': amount,
        'star_count': starCount,
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TelegramPaymentPurposeStars &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality().equals(other.amount, amount) &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality().equals(other.chatId, chatId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(chatId)
      ]);
}
