import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is outgoing and decreases the amount of owned currency
@immutable
class TransactionDirectionOutgoing extends TransactionDirection {
  const TransactionDirectionOutgoing();

  static const String constructor = 'transactionDirectionOutgoing';

  static TransactionDirectionOutgoing? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TransactionDirectionOutgoing();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
