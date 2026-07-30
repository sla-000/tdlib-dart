// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Product invoice
@immutable
class Invoice extends TdObject {
  const Invoice({
    required this.currency,
    required this.priceParts,
    required this.subscriptionPeriod,
    required this.maxTipAmount,
    required this.suggestedTipAmounts,
    required this.recurringPaymentTermsOfServiceUrl,
    required this.termsOfServiceUrl,
    required this.isTest,
    required this.needName,
    required this.needPhoneNumber,
    required this.needEmailAddress,
    required this.needShippingAddress,
    required this.sendPhoneNumberToProvider,
    required this.sendEmailAddressToProvider,
    required this.isFlexible,
  });

  /// [currency] ISO 4217 currency code
  final String currency;

  /// [priceParts] A list of objects used to calculate the total price of the
  /// product
  final List<LabeledPricePart> priceParts;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram
  /// Star debiting for subscription invoices; 0 if the invoice doesn't create
  /// subscription
  final int subscriptionPeriod;

  /// [maxTipAmount] The maximum allowed amount of tip in the smallest units of
  /// the currency
  final int maxTipAmount;

  /// [suggestedTipAmounts] Suggested amounts of tip in the smallest units of
  /// the currency
  final List<int> suggestedTipAmounts;

  /// [recurringPaymentTermsOfServiceUrl] An HTTP URL with terms of service for
  /// recurring payments. If non-empty, the invoice payment will result in
  /// recurring payments and the user must accept the terms of service before
  /// allowed to pay
  final String recurringPaymentTermsOfServiceUrl;

  /// [termsOfServiceUrl] An HTTP URL with terms of service for non-recurring
  /// payments. If non-empty, then the user must accept the terms of service
  /// before allowed to pay
  final String termsOfServiceUrl;

  /// [isTest] True, if the payment is a test payment
  final bool isTest;

  /// [needName] True, if the user's name is needed for payment
  final bool needName;

  /// [needPhoneNumber] True, if the user's phone number is needed for payment
  final bool needPhoneNumber;

  /// [needEmailAddress] True, if the user's email address is needed for payment
  final bool needEmailAddress;

  /// [needShippingAddress] True, if the user's shipping address is needed for
  /// payment
  final bool needShippingAddress;

  /// [sendPhoneNumberToProvider] True, if the user's phone number will be sent
  /// to the provider
  final bool sendPhoneNumberToProvider;

  /// [sendEmailAddressToProvider] True, if the user's email address will be
  /// sent to the provider
  final bool sendEmailAddressToProvider;

  /// [isFlexible] True, if the total price depends on the shipping method
  final bool isFlexible;

  static const String constructor = 'invoice';

  static Invoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Invoice(
      currency: (json['currency'] as String?) ?? '',
      priceParts: List<LabeledPricePart>.from(
          ((json['price_parts'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  LabeledPricePart.fromJson(item as Map<String, dynamic>?))
              .toList()),
      subscriptionPeriod: (json['subscription_period'] as int?) ?? 0,
      maxTipAmount: (json['max_tip_amount'] as int?) ?? 0,
      suggestedTipAmounts: List<int>.from(
          ((json['suggested_tip_amounts'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
      recurringPaymentTermsOfServiceUrl:
          (json['recurring_payment_terms_of_service_url'] as String?) ?? '',
      termsOfServiceUrl: (json['terms_of_service_url'] as String?) ?? '',
      isTest: (json['is_test'] as bool?) ?? false,
      needName: (json['need_name'] as bool?) ?? false,
      needPhoneNumber: (json['need_phone_number'] as bool?) ?? false,
      needEmailAddress: (json['need_email_address'] as bool?) ?? false,
      needShippingAddress: (json['need_shipping_address'] as bool?) ?? false,
      sendPhoneNumberToProvider:
          (json['send_phone_number_to_provider'] as bool?) ?? false,
      sendEmailAddressToProvider:
          (json['send_email_address_to_provider'] as bool?) ?? false,
      isFlexible: (json['is_flexible'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'currency': currency,
        'price_parts': priceParts.map((item) => item.toJson()).toList(),
        'subscription_period': subscriptionPeriod,
        'max_tip_amount': maxTipAmount,
        'suggested_tip_amounts':
            suggestedTipAmounts.map((item) => item).toList(),
        'recurring_payment_terms_of_service_url':
            recurringPaymentTermsOfServiceUrl,
        'terms_of_service_url': termsOfServiceUrl,
        'is_test': isTest,
        'need_name': needName,
        'need_phone_number': needPhoneNumber,
        'need_email_address': needEmailAddress,
        'need_shipping_address': needShippingAddress,
        'send_phone_number_to_provider': sendPhoneNumberToProvider,
        'send_email_address_to_provider': sendEmailAddressToProvider,
        'is_flexible': isFlexible,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Invoice &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality().equals(other.priceParts, priceParts) &&
          const DeepCollectionEquality()
              .equals(other.subscriptionPeriod, subscriptionPeriod) &&
          const DeepCollectionEquality()
              .equals(other.maxTipAmount, maxTipAmount) &&
          const DeepCollectionEquality()
              .equals(other.suggestedTipAmounts, suggestedTipAmounts) &&
          const DeepCollectionEquality().equals(
              other.recurringPaymentTermsOfServiceUrl,
              recurringPaymentTermsOfServiceUrl) &&
          const DeepCollectionEquality()
              .equals(other.termsOfServiceUrl, termsOfServiceUrl) &&
          const DeepCollectionEquality().equals(other.isTest, isTest) &&
          const DeepCollectionEquality().equals(other.needName, needName) &&
          const DeepCollectionEquality()
              .equals(other.needPhoneNumber, needPhoneNumber) &&
          const DeepCollectionEquality()
              .equals(other.needEmailAddress, needEmailAddress) &&
          const DeepCollectionEquality()
              .equals(other.needShippingAddress, needShippingAddress) &&
          const DeepCollectionEquality().equals(
              other.sendPhoneNumberToProvider, sendPhoneNumberToProvider) &&
          const DeepCollectionEquality().equals(
              other.sendEmailAddressToProvider, sendEmailAddressToProvider) &&
          const DeepCollectionEquality().equals(other.isFlexible, isFlexible));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(priceParts),
        const DeepCollectionEquality().hash(subscriptionPeriod),
        const DeepCollectionEquality().hash(maxTipAmount),
        const DeepCollectionEquality().hash(suggestedTipAmounts),
        const DeepCollectionEquality().hash(recurringPaymentTermsOfServiceUrl),
        const DeepCollectionEquality().hash(termsOfServiceUrl),
        const DeepCollectionEquality().hash(isTest),
        const DeepCollectionEquality().hash(needName),
        const DeepCollectionEquality().hash(needPhoneNumber),
        const DeepCollectionEquality().hash(needEmailAddress),
        const DeepCollectionEquality().hash(needShippingAddress),
        const DeepCollectionEquality().hash(sendPhoneNumberToProvider),
        const DeepCollectionEquality().hash(sendEmailAddressToProvider),
        const DeepCollectionEquality().hash(isFlexible)
      ]);
}
