import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of transaction with TON Grams
@immutable
abstract class TonTransactionType extends TdObject {
  const TonTransactionType();

  static const String constructor = 'tonTransactionType';

  /// Inherited by:
  /// [TonTransactionTypeFragmentDeposit]
  /// [TonTransactionTypeFragmentWithdrawal]
  /// [TonTransactionTypeGiftPurchaseOffer]
  /// [TonTransactionTypeStakeDicePayout]
  /// [TonTransactionTypeStakeDiceStake]
  /// [TonTransactionTypeSuggestedPostPayment]
  /// [TonTransactionTypeUnsupported]
  /// [TonTransactionTypeUpgradedGiftPurchase]
  /// [TonTransactionTypeUpgradedGiftSale]
  static TonTransactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TonTransactionTypeFragmentDeposit.constructor:
        return TonTransactionTypeFragmentDeposit.fromJson(json);
      case TonTransactionTypeFragmentWithdrawal.constructor:
        return TonTransactionTypeFragmentWithdrawal.fromJson(json);
      case TonTransactionTypeGiftPurchaseOffer.constructor:
        return TonTransactionTypeGiftPurchaseOffer.fromJson(json);
      case TonTransactionTypeStakeDicePayout.constructor:
        return TonTransactionTypeStakeDicePayout.fromJson(json);
      case TonTransactionTypeStakeDiceStake.constructor:
        return TonTransactionTypeStakeDiceStake.fromJson(json);
      case TonTransactionTypeSuggestedPostPayment.constructor:
        return TonTransactionTypeSuggestedPostPayment.fromJson(json);
      case TonTransactionTypeUnsupported.constructor:
        return TonTransactionTypeUnsupported.fromJson(json);
      case TonTransactionTypeUpgradedGiftPurchase.constructor:
        return TonTransactionTypeUpgradedGiftPurchase.fromJson(json);
      case TonTransactionTypeUpgradedGiftSale.constructor:
        return TonTransactionTypeUpgradedGiftSale.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
