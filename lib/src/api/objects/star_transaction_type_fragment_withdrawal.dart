// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a withdrawal of earned Telegram Stars to Fragment;
/// relevant for regular users, bots, supergroup and channel chats only
@immutable
class StarTransactionTypeFragmentWithdrawal extends StarTransactionType {
  const StarTransactionTypeFragmentWithdrawal({
    this.withdrawalState,
  });

  /// [withdrawalState] State of the withdrawal; may be null for refunds from
  /// Fragment
  final RevenueWithdrawalState? withdrawalState;

  static const String constructor = 'starTransactionTypeFragmentWithdrawal';

  static StarTransactionTypeFragmentWithdrawal? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeFragmentWithdrawal(
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
          other is StarTransactionTypeFragmentWithdrawal &&
          const DeepCollectionEquality()
              .equals(other.withdrawalState, withdrawalState));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(withdrawalState)]);
}
