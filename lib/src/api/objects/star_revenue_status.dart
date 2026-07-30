// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about Telegram Stars earned by a user or a chat
@immutable
class StarRevenueStatus extends TdObject {
  const StarRevenueStatus({
    required this.totalAmount,
    required this.currentAmount,
    required this.availableAmount,
    required this.withdrawalEnabled,
    required this.nextWithdrawalIn,
  });

  /// [totalAmount] Total Telegram Star amount earned
  final StarAmount totalAmount;

  /// [currentAmount] The Telegram Star amount that isn't withdrawn yet
  final StarAmount currentAmount;

  /// [availableAmount] The Telegram Star amount that is available for
  /// withdrawal
  final StarAmount availableAmount;

  /// [withdrawalEnabled] True, if Telegram Stars can be withdrawn now or later
  final bool withdrawalEnabled;

  /// [nextWithdrawalIn] Time left before the next withdrawal can be started, in
  /// seconds; 0 if withdrawal can be started now
  final int nextWithdrawalIn;

  static const String constructor = 'starRevenueStatus';

  static StarRevenueStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarRevenueStatus(
      totalAmount:
          StarAmount.fromJson(json['total_amount'] as Map<String, dynamic>?)!,
      currentAmount:
          StarAmount.fromJson(json['current_amount'] as Map<String, dynamic>?)!,
      availableAmount: StarAmount.fromJson(
          json['available_amount'] as Map<String, dynamic>?)!,
      withdrawalEnabled: json['withdrawal_enabled'] as bool,
      nextWithdrawalIn: json['next_withdrawal_in'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_amount': totalAmount.toJson(),
        'current_amount': currentAmount.toJson(),
        'available_amount': availableAmount.toJson(),
        'withdrawal_enabled': withdrawalEnabled,
        'next_withdrawal_in': nextWithdrawalIn,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarRevenueStatus &&
          const DeepCollectionEquality()
              .equals(other.totalAmount, totalAmount) &&
          const DeepCollectionEquality()
              .equals(other.currentAmount, currentAmount) &&
          const DeepCollectionEquality()
              .equals(other.availableAmount, availableAmount) &&
          const DeepCollectionEquality()
              .equals(other.withdrawalEnabled, withdrawalEnabled) &&
          const DeepCollectionEquality()
              .equals(other.nextWithdrawalIn, nextWithdrawalIn));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(totalAmount),
        const DeepCollectionEquality().hash(currentAmount),
        const DeepCollectionEquality().hash(availableAmount),
        const DeepCollectionEquality().hash(withdrawalEnabled),
        const DeepCollectionEquality().hash(nextWithdrawalIn)
      ]);
}
