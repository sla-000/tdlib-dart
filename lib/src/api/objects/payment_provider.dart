// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a payment provider
@immutable
abstract class PaymentProvider extends TdObject {
  const PaymentProvider();

  static const String constructor = 'paymentProvider';

  /// Inherited by:
  /// [PaymentProviderOther]
  /// [PaymentProviderSmartGlocal]
  /// [PaymentProviderStripe]
  static PaymentProvider? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PaymentProviderOther.constructor:
        return PaymentProviderOther.fromJson(json);
      case PaymentProviderSmartGlocal.constructor:
        return PaymentProviderSmartGlocal.fromJson(json);
      case PaymentProviderStripe.constructor:
        return PaymentProviderStripe.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is PaymentProvider);

  @override
  int get hashCode => runtimeType.hashCode;
}
