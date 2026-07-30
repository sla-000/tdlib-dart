// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TransactionDirectionOutgoing);

  @override
  int get hashCode => runtimeType.hashCode;
}
