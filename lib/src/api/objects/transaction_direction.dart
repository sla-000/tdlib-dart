import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes direction of transactions in a transaction list
@immutable
abstract class TransactionDirection extends TdObject {
  const TransactionDirection();

  static const String constructor = 'transactionDirection';

  /// Inherited by:
  /// [TransactionDirectionIncoming]
  /// [TransactionDirectionOutgoing]
  static TransactionDirection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TransactionDirectionIncoming.constructor:
        return TransactionDirectionIncoming.fromJson(json);
      case TransactionDirectionOutgoing.constructor:
        return TransactionDirectionOutgoing.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
