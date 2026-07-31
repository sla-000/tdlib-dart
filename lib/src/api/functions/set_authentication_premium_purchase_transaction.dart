// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Informs server about an in-store purchase of Telegram Premium before
/// authorization. Works only when the current authorization state is
/// authorizationStateWaitPremiumPurchase
/// Returns [Ok]
@immutable
class SetAuthenticationPremiumPurchaseTransaction extends TdFunction {
  const SetAuthenticationPremiumPurchaseTransaction({
    required this.transaction,
    required this.isRestore,
    required this.currency,
    required this.amount,
  });

  /// [transaction] Information about the transaction
  final StoreTransaction transaction;

  /// [isRestore] Pass true if this is a restore of a Telegram Premium purchase;
  /// only for App Store
  final bool isRestore;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  static const String constructor =
      'setAuthenticationPremiumPurchaseTransaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'transaction': transaction.toJson(),
        'is_restore': isRestore,
        'currency': currency,
        'amount': amount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetAuthenticationPremiumPurchaseTransaction &&
          const DeepCollectionEquality()
              .equals(other.transaction, transaction) &&
          const DeepCollectionEquality().equals(other.isRestore, isRestore) &&
          const DeepCollectionEquality().equals(other.currency, currency) &&
          const DeepCollectionEquality().equals(other.amount, amount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(transaction),
        const DeepCollectionEquality().hash(isRestore),
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(amount)
      ]);
}
