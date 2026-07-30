// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A Telegram Premium gift code was created for the user
@immutable
class MessagePremiumGiftCode extends MessageContent {
  const MessagePremiumGiftCode({
    this.creatorId,
    required this.text,
    required this.isFromGiveaway,
    required this.isUnclaimed,
    required this.currency,
    required this.amount,
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.monthCount,
    required this.dayCount,
    this.sticker,
    required this.code,
  });

  /// [creatorId] Identifier of a chat or a user who created the gift code; may
  /// be null if unknown
  final MessageSender? creatorId;

  /// [text] Message added to the gift
  final FormattedText text;

  /// [isFromGiveaway] True, if the gift code was created for a giveaway
  final bool isFromGiveaway;

  /// [isUnclaimed] True, if the winner for the corresponding Telegram Premium
  /// subscription wasn't chosen
  final bool isUnclaimed;

  /// [currency] Currency for the paid amount; empty if unknown
  final String currency;

  /// [amount] The paid amount, in the smallest units of the currency; 0 if
  /// unknown
  final int amount;

  /// [cryptocurrency] Cryptocurrency used to pay for the gift; may be empty if
  /// none or unknown
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The paid amount, in the smallest units of the
  /// cryptocurrency; 0 if unknown
  final int cryptocurrencyAmount;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active after code activation; 0 if the number of months isn't integer
  final int monthCount;

  /// [dayCount] Number of days the Telegram Premium subscription will be active
  /// after code activation
  final int dayCount;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  /// [code] The gift code
  final String code;

  static const String constructor = 'messagePremiumGiftCode';

  static MessagePremiumGiftCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePremiumGiftCode(
      creatorId:
          MessageSender.fromJson(json['creator_id'] as Map<String, dynamic>?),
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      isFromGiveaway: (json['is_from_giveaway'] as bool?) ?? false,
      isUnclaimed: (json['is_unclaimed'] as bool?) ?? false,
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      cryptocurrency: (json['cryptocurrency'] as String?) ?? '',
      cryptocurrencyAmount: (json['cryptocurrency_amount'] is int
              ? json['cryptocurrency_amount'] as int
              : int.tryParse(
                  json['cryptocurrency_amount']?.toString() ?? '')) ??
          0,
      monthCount: (json['month_count'] as int?) ?? 0,
      dayCount: (json['day_count'] as int?) ?? 0,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
      code: (json['code'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'creator_id': creatorId?.toJson(),
        'text': text.toJson(),
        'is_from_giveaway': isFromGiveaway,
        'is_unclaimed': isUnclaimed,
        'currency': currency,
        'amount': amount,
        'cryptocurrency': cryptocurrency,
        'cryptocurrency_amount': cryptocurrencyAmount.toString(),
        'month_count': monthCount,
        'day_count': dayCount,
        'sticker': sticker?.toJson(),
        'code': code,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessagePremiumGiftCode &&
          const DeepCollectionEquality().equals(other.creatorId, creatorId) &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality()
              .equals(other.isFromGiveaway, isFromGiveaway) &&
          const DeepCollectionEquality()
              .equals(other.isUnclaimed, isUnclaimed) &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality().equals(other.amount, amount) &&
          const DeepCollectionEquality()
              .equals(other.cryptocurrency, cryptocurrency) &&
          const DeepCollectionEquality()
              .equals(other.cryptocurrencyAmount, cryptocurrencyAmount) &&
          const DeepCollectionEquality().equals(other.monthCount, monthCount) &&
          const DeepCollectionEquality().equals(other.dayCount, dayCount) &&
          const DeepCollectionEquality().equals(other.sticker, sticker) &&
          const DeepCollectionEquality().equals(other.code, code));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(creatorId),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(isFromGiveaway),
        const DeepCollectionEquality().hash(isUnclaimed),
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(cryptocurrency),
        const DeepCollectionEquality().hash(cryptocurrencyAmount),
        const DeepCollectionEquality().hash(monthCount),
        const DeepCollectionEquality().hash(dayCount),
        const DeepCollectionEquality().hash(sticker),
        const DeepCollectionEquality().hash(code)
      ]);
}
