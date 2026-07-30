// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Telegram Stars were gifted to a user
@immutable
class MessageGiftedStars extends MessageContent {
  const MessageGiftedStars({
    required this.gifterUserId,
    required this.receiverUserId,
    required this.currency,
    required this.amount,
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.starCount,
    required this.transactionId,
    this.sticker,
  });

  /// [gifterUserId] The identifier of a user who gifted Telegram Stars; 0 if
  /// the gift was anonymous or is outgoing
  final int gifterUserId;

  /// [receiverUserId] The identifier of a user who received Telegram Stars; 0
  /// if the gift is incoming
  final int receiverUserId;

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

  /// [starCount] Number of Telegram Stars that were gifted
  final int starCount;

  /// [transactionId] Identifier of the transaction for Telegram Stars purchase;
  /// for receiver only
  final String transactionId;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  static const String constructor = 'messageGiftedStars';

  static MessageGiftedStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiftedStars(
      gifterUserId: (json['gifter_user_id'] as int?) ?? 0,
      receiverUserId: (json['receiver_user_id'] as int?) ?? 0,
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      cryptocurrency: (json['cryptocurrency'] as String?) ?? '',
      cryptocurrencyAmount: (json['cryptocurrency_amount'] is int
              ? json['cryptocurrency_amount'] as int
              : int.tryParse(
                  json['cryptocurrency_amount']?.toString() ?? '')) ??
          0,
      starCount: (json['star_count'] as int?) ?? 0,
      transactionId: (json['transaction_id'] as String?) ?? '',
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gifter_user_id': gifterUserId,
        'receiver_user_id': receiverUserId,
        'currency': currency,
        'amount': amount,
        'cryptocurrency': cryptocurrency,
        'cryptocurrency_amount': cryptocurrencyAmount.toString(),
        'star_count': starCount,
        'transaction_id': transactionId,
        'sticker': sticker?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageGiftedStars &&
          const DeepCollectionEquality()
              .equals(other.gifterUserId, gifterUserId) &&
          const DeepCollectionEquality()
              .equals(other.receiverUserId, receiverUserId) &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality().equals(other.amount, amount) &&
          const DeepCollectionEquality()
              .equals(other.cryptocurrency, cryptocurrency) &&
          const DeepCollectionEquality()
              .equals(other.cryptocurrencyAmount, cryptocurrencyAmount) &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality()
              .equals(other.transactionId, transactionId) &&
          const DeepCollectionEquality().equals(other.sticker, sticker));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(gifterUserId),
        const DeepCollectionEquality().hash(receiverUserId),
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(cryptocurrency),
        const DeepCollectionEquality().hash(cryptocurrencyAmount),
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(transactionId),
        const DeepCollectionEquality().hash(sticker)
      ]);
}
