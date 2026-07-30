// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes type of successful payment
@immutable
abstract class PaymentReceiptType extends TdObject {
  const PaymentReceiptType();

  static const String constructor = 'paymentReceiptType';

  /// Inherited by:
  /// [PaymentReceiptTypeRegular]
  /// [PaymentReceiptTypeStars]
  static PaymentReceiptType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PaymentReceiptTypeRegular.constructor:
        return PaymentReceiptTypeRegular.fromJson(json);
      case PaymentReceiptTypeStars.constructor:
        return PaymentReceiptTypeStars.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is PaymentReceiptType);

  @override
  int get hashCode => runtimeType.hashCode;
}
