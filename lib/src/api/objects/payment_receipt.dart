// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a successful payment
@immutable
class PaymentReceipt extends TdObject {
  const PaymentReceipt({
    required this.productInfo,
    required this.date,
    required this.sellerBotUserId,
    required this.type,
  });

  /// [productInfo] Information about the product
  final ProductInfo productInfo;

  /// [date] Point in time (Unix timestamp) when the payment was made
  final int date;

  /// [sellerBotUserId] User identifier of the seller bot
  final int sellerBotUserId;

  /// [type] Type of the payment receipt
  final PaymentReceiptType type;

  static const String constructor = 'paymentReceipt';

  static PaymentReceipt? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentReceipt(
      productInfo:
          ProductInfo.fromJson(json['product_info'] as Map<String, dynamic>?)!,
      date: json['date'] as int,
      sellerBotUserId: json['seller_bot_user_id'] as int,
      type: PaymentReceiptType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'product_info': productInfo.toJson(),
        'date': date,
        'seller_bot_user_id': sellerBotUserId,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PaymentReceipt &&
          const DeepCollectionEquality()
              .equals(other.productInfo, productInfo) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality()
              .equals(other.sellerBotUserId, sellerBotUserId) &&
          const DeepCollectionEquality().equals(other.type, type));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(productInfo),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(sellerBotUserId),
        const DeepCollectionEquality().hash(type)
      ]);
}
