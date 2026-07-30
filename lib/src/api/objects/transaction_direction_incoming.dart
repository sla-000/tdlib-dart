import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is incoming and increases the amount of owned currency
@immutable
class TransactionDirectionIncoming extends TransactionDirection {
  const TransactionDirectionIncoming();

  static const String constructor = 'transactionDirectionIncoming';

  static TransactionDirectionIncoming? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TransactionDirectionIncoming();
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
