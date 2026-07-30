import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about TON Grams earned by the current user
@immutable
class GramRevenueStatus extends TdObject {
  const GramRevenueStatus({
    required this.totalAmount,
    required this.balanceAmount,
    required this.availableAmount,
    required this.withdrawalEnabled,
  });

  /// [totalAmount] Total Gram amount earned; in the smallest units of the
  /// cryptocurrency
  final int totalAmount;

  /// [balanceAmount] The Gram amount that isn't withdrawn yet; in the smallest
  /// units of the cryptocurrency
  final int balanceAmount;

  /// [availableAmount] The Gram amount that is available for withdrawal; in the
  /// smallest units of the cryptocurrency
  final int availableAmount;

  /// [withdrawalEnabled] True, if Grams can be withdrawn
  final bool withdrawalEnabled;

  static const String constructor = 'gramRevenueStatus';

  static GramRevenueStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GramRevenueStatus(
      totalAmount: int.tryParse(json['total_amount']) ?? 0,
      balanceAmount: int.tryParse(json['balance_amount']) ?? 0,
      availableAmount: int.tryParse(json['available_amount']) ?? 0,
      withdrawalEnabled: json['withdrawal_enabled'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_amount': totalAmount.toString(),
        'balance_amount': balanceAmount.toString(),
        'available_amount': availableAmount.toString(),
        'withdrawal_enabled': withdrawalEnabled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
