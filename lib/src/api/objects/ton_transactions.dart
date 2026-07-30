// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of Toncoin transactions
@immutable
class TonTransactions extends TdObject {
  const TonTransactions({
    required this.tonAmount,
    required this.transactions,
    required this.nextOffset,
  });

  /// [tonAmount] The total amount of owned Toncoins
  final int tonAmount;

  /// [transactions] List of Toncoin transactions
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
      tonAmount: (json['ton_amount'] as int?) ?? 0,
      transactions: List<TonTransaction>.from(((json['transactions']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => TonTransaction.fromJson(item as Map<String, dynamic>?))
          .toList()),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'ton_amount': tonAmount,
        'transactions': transactions.map((item) => item.toJson()).toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TonTransactions &&
          const DeepCollectionEquality().equals(other.tonAmount, tonAmount) &&
          const DeepCollectionEquality()
              .equals(other.transactions, transactions) &&
          const DeepCollectionEquality().equals(other.nextOffset, nextOffset));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(tonAmount),
        const DeepCollectionEquality().hash(transactions),
        const DeepCollectionEquality().hash(nextOffset)
      ]);
}
