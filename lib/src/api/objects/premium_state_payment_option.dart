// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an option for buying or upgrading Telegram Premium for self
@immutable
class PremiumStatePaymentOption extends TdObject {
  const PremiumStatePaymentOption({
    required this.paymentOption,
    required this.isCurrent,
    required this.isUpgrade,
    required this.lastTransactionId,
  });

  /// [paymentOption] Information about the payment option
  final PremiumPaymentOption paymentOption;

  /// [isCurrent] True, if this is the currently used Telegram Premium
  /// subscription option
  final bool isCurrent;

  /// [isUpgrade] True, if the payment option can be used to upgrade the
  /// existing Telegram Premium subscription
  final bool isUpgrade;

  /// [lastTransactionId] Identifier of the last in-store transaction for the
  /// currently used option
  final String lastTransactionId;

  static const String constructor = 'premiumStatePaymentOption';

  static PremiumStatePaymentOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumStatePaymentOption(
      paymentOption: PremiumPaymentOption.fromJson(
          json['payment_option'] as Map<String, dynamic>?)!,
      isCurrent: json['is_current'] as bool,
      isUpgrade: json['is_upgrade'] as bool,
      lastTransactionId: json['last_transaction_id'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'payment_option': paymentOption.toJson(),
        'is_current': isCurrent,
        'is_upgrade': isUpgrade,
        'last_transaction_id': lastTransactionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PremiumStatePaymentOption &&
          const DeepCollectionEquality()
              .equals(other.paymentOption, paymentOption) &&
          const DeepCollectionEquality().equals(other.isCurrent, isCurrent) &&
          const DeepCollectionEquality().equals(other.isUpgrade, isUpgrade) &&
          const DeepCollectionEquality()
              .equals(other.lastTransactionId, lastTransactionId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(paymentOption),
        const DeepCollectionEquality().hash(isCurrent),
        const DeepCollectionEquality().hash(isUpgrade),
        const DeepCollectionEquality().hash(lastTransactionId)
      ]);
}
