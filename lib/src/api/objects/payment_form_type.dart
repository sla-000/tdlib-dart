// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes type of payment form
@immutable
abstract class PaymentFormType extends TdObject {
  const PaymentFormType();

  static const String constructor = 'paymentFormType';

  /// Inherited by:
  /// [PaymentFormTypeRegular]
  /// [PaymentFormTypeStarSubscription]
  /// [PaymentFormTypeStars]
  static PaymentFormType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PaymentFormTypeRegular.constructor:
        return PaymentFormTypeRegular.fromJson(json);
      case PaymentFormTypeStarSubscription.constructor:
        return PaymentFormTypeStarSubscription.fromJson(json);
      case PaymentFormTypeStars.constructor:
        return PaymentFormTypeStars.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is PaymentFormType);

  @override
  int get hashCode => runtimeType.hashCode;
}
