import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of TON Gram transactions
@immutable
class TonTransactions extends TdObject {
  const TonTransactions({
    required this.gramAmount,
    required this.transactions,
    required this.nextOffset,
  });

  /// [gramAmount] The total amount of owned Grams, in the smallest units of the
  /// cryptocurrency
  final int gramAmount;

  /// [transactions] List of Gram transactions
  final List<TonTransaction> transactions;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'tonTransactions';

  static TonTransactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TonTransactions(
      gramAmount: json['gram_amount'] as int,
      transactions: List<TonTransaction>.from(
          ((json['transactions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => TonTransaction.fromJson(item))
              .toList()),
      nextOffset: json['next_offset'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gram_amount': gramAmount,
        'transactions': transactions.map((item) => item.toJson()).toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
