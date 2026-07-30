// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a withdrawal of earned Grams to Fragment
@immutable
class TonTransactionTypeFragmentWithdrawal extends TonTransactionType {
  const TonTransactionTypeFragmentWithdrawal({
    this.withdrawalState,
  });

  /// [withdrawalState] State of the withdrawal; may be null for refunds from
  /// Fragment
  final RevenueWithdrawalState? withdrawalState;

  static const String constructor = 'tonTransactionTypeFragmentWithdrawal';

  static TonTransactionTypeFragmentWithdrawal? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TonTransactionTypeFragmentWithdrawal(
      withdrawalState: RevenueWithdrawalState.fromJson(
          json['withdrawal_state'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'withdrawal_state': withdrawalState?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TonTransactionTypeFragmentWithdrawal &&
          const DeepCollectionEquality()
              .equals(other.withdrawalState, withdrawalState));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(withdrawalState)]);
}
