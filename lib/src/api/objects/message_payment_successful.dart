// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A payment has been sent to a bot or a business account
@immutable
class MessagePaymentSuccessful extends MessageContent {
  const MessagePaymentSuccessful({
    required this.invoiceChatId,
    required this.invoiceMessageId,
    required this.currency,
    required this.totalAmount,
    required this.subscriptionUntilDate,
    required this.isRecurring,
    required this.isFirstRecurring,
    required this.invoiceName,
  });

  /// [invoiceChatId] Identifier of the chat, containing the corresponding
  /// invoice message
  final int invoiceChatId;

  /// [invoiceMessageId] Identifier of the message with the corresponding
  /// invoice; may be 0 or an identifier of a deleted message
  final int invoiceMessageId;

  /// [currency] Currency for the price of the product
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the
  /// currency
  final int totalAmount;

  /// [subscriptionUntilDate] Point in time (Unix timestamp) when the
  /// subscription will expire; 0 if unknown or the payment isn't recurring
  final int subscriptionUntilDate;

  /// [isRecurring] True, if this is a recurring payment
  final bool isRecurring;

  /// [isFirstRecurring] True, if this is the first recurring payment
  final bool isFirstRecurring;

  /// [invoiceName] Name of the invoice; may be empty if unknown
  final String invoiceName;

  static const String constructor = 'messagePaymentSuccessful';

  static MessagePaymentSuccessful? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaymentSuccessful(
      invoiceChatId: (json['invoice_chat_id'] as int?) ?? 0,
      invoiceMessageId: (json['invoice_message_id'] as int?) ?? 0,
      currency: (json['currency'] as String?) ?? '',
      totalAmount: (json['total_amount'] as int?) ?? 0,
      subscriptionUntilDate: (json['subscription_until_date'] as int?) ?? 0,
      isRecurring: (json['is_recurring'] as bool?) ?? false,
      isFirstRecurring: (json['is_first_recurring'] as bool?) ?? false,
      invoiceName: (json['invoice_name'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invoice_chat_id': invoiceChatId,
        'invoice_message_id': invoiceMessageId,
        'currency': currency,
        'total_amount': totalAmount,
        'subscription_until_date': subscriptionUntilDate,
        'is_recurring': isRecurring,
        'is_first_recurring': isFirstRecurring,
        'invoice_name': invoiceName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessagePaymentSuccessful &&
          const DeepCollectionEquality()
              .equals(other.invoiceChatId, invoiceChatId) &&
          const DeepCollectionEquality()
              .equals(other.invoiceMessageId, invoiceMessageId) &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality()
              .equals(other.totalAmount, totalAmount) &&
          const DeepCollectionEquality()
              .equals(other.subscriptionUntilDate, subscriptionUntilDate) &&
          const DeepCollectionEquality()
              .equals(other.isRecurring, isRecurring) &&
          const DeepCollectionEquality()
              .equals(other.isFirstRecurring, isFirstRecurring) &&
          const DeepCollectionEquality()
              .equals(other.invoiceName, invoiceName));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(invoiceChatId),
        const DeepCollectionEquality().hash(invoiceMessageId),
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(totalAmount),
        const DeepCollectionEquality().hash(subscriptionUntilDate),
        const DeepCollectionEquality().hash(isRecurring),
        const DeepCollectionEquality().hash(isFirstRecurring),
        const DeepCollectionEquality().hash(invoiceName)
      ]);
}
