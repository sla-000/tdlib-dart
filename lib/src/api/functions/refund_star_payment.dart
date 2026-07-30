// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Refunds a previously done payment in Telegram Stars; for bots only
/// Returns [Ok]
@immutable
class RefundStarPayment extends TdFunction {
  const RefundStarPayment({
    required this.userId,
    required this.telegramPaymentChargeId,
  });

  /// [userId] Identifier of the user who did the payment
  final int userId;

  /// [telegramPaymentChargeId] Telegram payment identifier
  final String telegramPaymentChargeId;

  static const String constructor = 'refundStarPayment';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'telegram_payment_charge_id': telegramPaymentChargeId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RefundStarPayment &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality()
              .equals(other.telegramPaymentChargeId, telegramPaymentChargeId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(telegramPaymentChargeId)
      ]);
}
