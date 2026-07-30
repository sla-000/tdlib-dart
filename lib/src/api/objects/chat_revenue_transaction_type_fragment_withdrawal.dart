// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a withdrawal of earnings through Fragment
@immutable
class ChatRevenueTransactionTypeFragmentWithdrawal
    extends ChatRevenueTransactionType {
  const ChatRevenueTransactionTypeFragmentWithdrawal({
    required this.withdrawalDate,
    required this.state,
  });

  /// [withdrawalDate] Point in time (Unix timestamp) when the earnings
  /// withdrawal started
  final int withdrawalDate;

  /// [state] State of the withdrawal
  final RevenueWithdrawalState state;

  static const String constructor =
      'chatRevenueTransactionTypeFragmentWithdrawal';

  static ChatRevenueTransactionTypeFragmentWithdrawal? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatRevenueTransactionTypeFragmentWithdrawal(
      withdrawalDate: (json['withdrawal_date'] as int?) ?? 0,
      state: RevenueWithdrawalState.fromJson(
          json['state'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'withdrawal_date': withdrawalDate,
        'state': state.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatRevenueTransactionTypeFragmentWithdrawal &&
          const DeepCollectionEquality()
              .equals(other.withdrawalDate, withdrawalDate) &&
          const DeepCollectionEquality().equals(other.state, state));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(withdrawalDate),
        const DeepCollectionEquality().hash(state)
      ]);
}
