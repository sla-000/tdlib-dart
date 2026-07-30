// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Cancels or re-enables Telegram Star subscription for a user; for bots only
/// Returns [Ok]
@immutable
class EditUserStarSubscription extends TdFunction {
  const EditUserStarSubscription({
    required this.userId,
    required this.telegramPaymentChargeId,
    required this.isCanceled,
  });

  /// [userId] User identifier
  final int userId;

  /// [telegramPaymentChargeId] Telegram payment identifier of the subscription
  final String telegramPaymentChargeId;

  /// [isCanceled] Pass true to cancel the subscription; pass false to allow the
  /// user to enable it
  final bool isCanceled;

  static const String constructor = 'editUserStarSubscription';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'telegram_payment_charge_id': telegramPaymentChargeId,
        'is_canceled': isCanceled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditUserStarSubscription &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality()
              .equals(other.telegramPaymentChargeId, telegramPaymentChargeId) &&
          const DeepCollectionEquality().equals(other.isCanceled, isCanceled));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(telegramPaymentChargeId),
        const DeepCollectionEquality().hash(isCanceled)
      ]);
}
