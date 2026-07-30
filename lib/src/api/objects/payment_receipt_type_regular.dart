// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The payment was done using a third-party payment provider
@immutable
class PaymentReceiptTypeRegular extends PaymentReceiptType {
  const PaymentReceiptTypeRegular({
    required this.paymentProviderUserId,
    required this.invoice,
    this.orderInfo,
    this.shippingOption,
    required this.credentialsTitle,
    required this.tipAmount,
  });

  /// [paymentProviderUserId] User identifier of the payment provider bot
  final int paymentProviderUserId;

  /// [invoice] Information about the invoice
  final Invoice invoice;

  /// [orderInfo] Order information; may be null
  final OrderInfo? orderInfo;

  /// [shippingOption] Chosen shipping option; may be null
  final ShippingOption? shippingOption;

  /// [credentialsTitle] Title of the saved credentials chosen by the buyer
  final String credentialsTitle;

  /// [tipAmount] The amount of tip chosen by the buyer in the smallest units of
  /// the currency
  final int tipAmount;

  static const String constructor = 'paymentReceiptTypeRegular';

  static PaymentReceiptTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentReceiptTypeRegular(
      paymentProviderUserId: json['payment_provider_user_id'] as int,
      invoice: Invoice.fromJson(json['invoice'] as Map<String, dynamic>?)!,
      orderInfo:
          OrderInfo.fromJson(json['order_info'] as Map<String, dynamic>?),
      shippingOption: ShippingOption.fromJson(
          json['shipping_option'] as Map<String, dynamic>?),
      credentialsTitle: json['credentials_title'] as String,
      tipAmount: json['tip_amount'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'payment_provider_user_id': paymentProviderUserId,
        'invoice': invoice.toJson(),
        'order_info': orderInfo?.toJson(),
        'shipping_option': shippingOption?.toJson(),
        'credentials_title': credentialsTitle,
        'tip_amount': tipAmount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PaymentReceiptTypeRegular &&
          const DeepCollectionEquality()
              .equals(other.paymentProviderUserId, paymentProviderUserId) &&
          const DeepCollectionEquality().equals(other.invoice, invoice) &&
          const DeepCollectionEquality().equals(other.orderInfo, orderInfo) &&
          const DeepCollectionEquality()
              .equals(other.shippingOption, shippingOption) &&
          const DeepCollectionEquality()
              .equals(other.credentialsTitle, credentialsTitle) &&
          const DeepCollectionEquality().equals(other.tipAmount, tipAmount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(paymentProviderUserId),
        const DeepCollectionEquality().hash(invoice),
        const DeepCollectionEquality().hash(orderInfo),
        const DeepCollectionEquality().hash(shippingOption),
        const DeepCollectionEquality().hash(credentialsTitle),
        const DeepCollectionEquality().hash(tipAmount)
      ]);
}
