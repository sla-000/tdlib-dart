// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Telegram Premium was gifted to a user
@immutable
class MessageGiftedPremium extends MessageContent {
  const MessageGiftedPremium({
    required this.gifterUserId,
    required this.receiverUserId,
    required this.text,
    required this.currency,
    required this.amount,
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.monthCount,
    required this.dayCount,
    this.sticker,
  });

  /// [gifterUserId] The identifier of a user who gifted Telegram Premium; 0 if
  /// the gift was anonymous or is outgoing
  final int gifterUserId;

  /// [receiverUserId] The identifier of a user who received Telegram Premium; 0
  /// if the gift is incoming
  final int receiverUserId;

  /// [text] Message added to the gifted Telegram Premium by the sender
  final FormattedText text;

  /// [currency] Currency for the paid amount
  final String currency;

  /// [amount] The paid amount, in the smallest units of the currency
  final int amount;

  /// [cryptocurrency] Cryptocurrency used to pay for the gift; may be empty if
  /// none
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The paid amount, in the smallest units of the
  /// cryptocurrency; 0 if none
  final int cryptocurrencyAmount;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active after code activation; 0 if the number of months isn't integer
  final int monthCount;

  /// [dayCount] Number of days the Telegram Premium subscription will be active
  final int dayCount;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  static const String constructor = 'messageGiftedPremium';

  static MessageGiftedPremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiftedPremium(
      gifterUserId: (json['gifter_user_id'] as int?) ?? 0,
      receiverUserId: (json['receiver_user_id'] as int?) ?? 0,
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
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
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gifter_user_id': gifterUserId,
        'receiver_user_id': receiverUserId,
        'text': text.toJson(),
        'currency': currency,
        'amount': amount,
        'cryptocurrency': cryptocurrency,
        'cryptocurrency_amount': cryptocurrencyAmount.toString(),
        'month_count': monthCount,
        'day_count': dayCount,
        'sticker': sticker?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageGiftedPremium &&
          const DeepCollectionEquality()
              .equals(other.gifterUserId, gifterUserId) &&
          const DeepCollectionEquality()
              .equals(other.receiverUserId, receiverUserId) &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality().equals(other.amount, amount) &&
          const DeepCollectionEquality()
              .equals(other.cryptocurrency, cryptocurrency) &&
          const DeepCollectionEquality()
              .equals(other.cryptocurrencyAmount, cryptocurrencyAmount) &&
          const DeepCollectionEquality().equals(other.monthCount, monthCount) &&
          const DeepCollectionEquality().equals(other.dayCount, dayCount) &&
          const DeepCollectionEquality().equals(other.sticker, sticker));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(gifterUserId),
        const DeepCollectionEquality().hash(receiverUserId),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(cryptocurrency),
        const DeepCollectionEquality().hash(cryptocurrencyAmount),
        const DeepCollectionEquality().hash(monthCount),
        const DeepCollectionEquality().hash(dayCount),
        const DeepCollectionEquality().hash(sticker)
      ]);
}
