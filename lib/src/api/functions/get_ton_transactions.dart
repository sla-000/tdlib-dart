// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of Toncoin transactions of the current user
/// Returns [TonTransactions]
@immutable
class GetTonTransactions extends TdFunction {
  const GetTonTransactions({
    this.direction,
    required this.offset,
    required this.limit,
  });

  /// [direction] Direction of the transactions to receive; pass null to get all
  /// transactions
  final TransactionDirection? direction;

  /// [offset] Offset of the first transaction to return as received from the
  /// previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of transactions to return
  final int limit;

  static const String constructor = 'getTonTransactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'direction': direction?.toJson(),
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetTonTransactions &&
          const DeepCollectionEquality().equals(other.direction, direction) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(direction),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit)
      ]);
}
