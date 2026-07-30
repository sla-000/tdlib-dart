// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about revenue earned from sponsored messages in a
/// chat
@immutable
class ChatRevenueAmount extends TdObject {
  const ChatRevenueAmount({
    required this.cryptocurrency,
    required this.totalAmount,
    required this.balanceAmount,
    required this.availableAmount,
    required this.withdrawalEnabled,
  });

  /// [cryptocurrency] Cryptocurrency in which revenue is calculated
  final String cryptocurrency;

  /// [totalAmount] Total amount of the cryptocurrency earned, in the smallest
  /// units of the cryptocurrency
  final int totalAmount;

  /// [balanceAmount] Amount of the cryptocurrency that isn't withdrawn yet, in
  /// the smallest units of the cryptocurrency
  final int balanceAmount;

  /// [availableAmount] Amount of the cryptocurrency available for withdrawal,
  /// in the smallest units of the cryptocurrency
  final int availableAmount;

  /// [withdrawalEnabled] True, if Telegram Stars can be withdrawn now or later
  final bool withdrawalEnabled;

  static const String constructor = 'chatRevenueAmount';

  static ChatRevenueAmount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatRevenueAmount(
      cryptocurrency: (json['cryptocurrency'] as String?) ?? '',
      totalAmount: (json['total_amount'] is int
              ? json['total_amount'] as int
              : int.tryParse(json['total_amount']?.toString() ?? '')) ??
          0,
      balanceAmount: (json['balance_amount'] is int
              ? json['balance_amount'] as int
              : int.tryParse(json['balance_amount']?.toString() ?? '')) ??
          0,
      availableAmount: (json['available_amount'] is int
              ? json['available_amount'] as int
              : int.tryParse(json['available_amount']?.toString() ?? '')) ??
          0,
      withdrawalEnabled: (json['withdrawal_enabled'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'cryptocurrency': cryptocurrency,
        'total_amount': totalAmount.toString(),
        'balance_amount': balanceAmount.toString(),
        'available_amount': availableAmount.toString(),
        'withdrawal_enabled': withdrawalEnabled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatRevenueAmount &&
          const DeepCollectionEquality()
              .equals(other.cryptocurrency, cryptocurrency) &&
          const DeepCollectionEquality()
              .equals(other.totalAmount, totalAmount) &&
          const DeepCollectionEquality()
              .equals(other.balanceAmount, balanceAmount) &&
          const DeepCollectionEquality()
              .equals(other.availableAmount, availableAmount) &&
          const DeepCollectionEquality()
              .equals(other.withdrawalEnabled, withdrawalEnabled));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(cryptocurrency),
        const DeepCollectionEquality().hash(totalAmount),
        const DeepCollectionEquality().hash(balanceAmount),
        const DeepCollectionEquality().hash(availableAmount),
        const DeepCollectionEquality().hash(withdrawalEnabled)
      ]);
}
