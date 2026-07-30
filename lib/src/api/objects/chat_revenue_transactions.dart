// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of chat revenue transactions
@immutable
class ChatRevenueTransactions extends TdObject {
  const ChatRevenueTransactions({
    required this.gramAmount,
    required this.transactions,
    required this.nextOffset,
  });

  /// [gramAmount] The amount of owned TON Grams; in the smallest units of the
  /// cryptocurrency
  final int gramAmount;

  /// [transactions] List of transactions
  final List<ChatRevenueTransaction> transactions;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'chatRevenueTransactions';

  static ChatRevenueTransactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatRevenueTransactions(
      gramAmount: json['gram_amount'] as int,
      transactions: List<ChatRevenueTransaction>.from(
          ((json['transactions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatRevenueTransaction.fromJson(item))
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatRevenueTransactions &&
          const DeepCollectionEquality().equals(other.gramAmount, gramAmount) &&
          const DeepCollectionEquality()
              .equals(other.transactions, transactions) &&
          const DeepCollectionEquality().equals(other.nextOffset, nextOffset));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(gramAmount),
        const DeepCollectionEquality().hash(transactions),
        const DeepCollectionEquality().hash(nextOffset)
      ]);
}
