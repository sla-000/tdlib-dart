import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      withdrawalDate: json['withdrawal_date'] as int,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
