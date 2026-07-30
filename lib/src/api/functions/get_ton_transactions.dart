import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of TON blockchain transactions of the current user
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
