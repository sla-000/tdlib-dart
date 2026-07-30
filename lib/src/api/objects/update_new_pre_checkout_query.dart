// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new incoming pre-checkout query; for bots only. Contains full
/// information about a checkout
@immutable
class UpdateNewPreCheckoutQuery extends Update {
  const UpdateNewPreCheckoutQuery({
    required this.id,
    required this.senderUserId,
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    required this.shippingOptionId,
    this.orderInfo,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [currency] Currency for the product price
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the
  /// currency
  final int totalAmount;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [shippingOptionId] Identifier of a shipping option chosen by the user; may
  /// be empty if not applicable
  final String shippingOptionId;

  /// [orderInfo] Information about the order; may be null
  final OrderInfo? orderInfo;

  static const String constructor = 'updateNewPreCheckoutQuery';

  static UpdateNewPreCheckoutQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewPreCheckoutQuery(
      id: (json['id'] is int
              ? json['id'] as int
              : int.tryParse(json['id']?.toString() ?? '')) ??
          0,
      senderUserId: (json['sender_user_id'] as int?) ?? 0,
      currency: (json['currency'] as String?) ?? '',
      totalAmount: (json['total_amount'] as int?) ?? 0,
      invoicePayload: (json['invoice_payload'] as String?) ?? '',
      shippingOptionId: (json['shipping_option_id'] as String?) ?? '',
      orderInfo:
          OrderInfo.fromJson(json['order_info'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'sender_user_id': senderUserId,
        'currency': currency,
        'total_amount': totalAmount,
        'invoice_payload': invoicePayload,
        'shipping_option_id': shippingOptionId,
        'order_info': orderInfo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateNewPreCheckoutQuery &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality()
              .equals(other.senderUserId, senderUserId) &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality()
              .equals(other.totalAmount, totalAmount) &&
          const DeepCollectionEquality()
              .equals(other.invoicePayload, invoicePayload) &&
          const DeepCollectionEquality()
              .equals(other.shippingOptionId, shippingOptionId) &&
          const DeepCollectionEquality().equals(other.orderInfo, orderInfo));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(senderUserId),
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(totalAmount),
        const DeepCollectionEquality().hash(invoicePayload),
        const DeepCollectionEquality().hash(shippingOptionId),
        const DeepCollectionEquality().hash(orderInfo)
      ]);
}
