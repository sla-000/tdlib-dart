import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a transaction changing the amount of owned TON Grams
@immutable
class TonTransaction extends TdObject {
  const TonTransaction({
    required this.id,
    required this.gramAmount,
    required this.isRefund,
    required this.date,
    required this.type,
  });

  /// [id] Unique identifier of the transaction
  final String id;

  /// [gramAmount] The amount of added owned Grams, in the smallest units of the
  /// cryptocurrency; negative for outgoing transactions
  final int gramAmount;

  /// [isRefund] True, if the transaction is a refund of a previous transaction
  final bool isRefund;

  /// [date] Point in time (Unix timestamp) when the transaction was completed
  final int date;

  /// [type] Type of the transaction
  final TonTransactionType type;

  static const String constructor = 'tonTransaction';

  static TonTransaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TonTransaction(
      id: json['id'] as String,
      gramAmount: json['gram_amount'] as int,
      isRefund: json['is_refund'] as bool,
      date: json['date'] as int,
      type: TonTransactionType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'gram_amount': gramAmount,
        'is_refund': isRefund,
        'date': date,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
