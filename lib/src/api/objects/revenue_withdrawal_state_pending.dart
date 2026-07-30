// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Withdrawal is pending
@immutable
class RevenueWithdrawalStatePending extends RevenueWithdrawalState {
  const RevenueWithdrawalStatePending();

  static const String constructor = 'revenueWithdrawalStatePending';

  static RevenueWithdrawalStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const RevenueWithdrawalStatePending();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RevenueWithdrawalStatePending);

  @override
  int get hashCode => runtimeType.hashCode;
}
