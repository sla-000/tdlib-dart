// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The payment form is for a payment in Telegram Stars for subscription
@immutable
class PaymentFormTypeStarSubscription extends PaymentFormType {
  const PaymentFormTypeStarSubscription({
    required this.pricing,
  });

  /// [pricing] Information about subscription plan
  final StarSubscriptionPricing pricing;

  static const String constructor = 'paymentFormTypeStarSubscription';

  static PaymentFormTypeStarSubscription? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentFormTypeStarSubscription(
      pricing: StarSubscriptionPricing.fromJson(
          json['pricing'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'pricing': pricing.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PaymentFormTypeStarSubscription &&
          const DeepCollectionEquality().equals(other.pricing, pricing));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(pricing)]);
}
