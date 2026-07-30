import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a payment for successful stake dice throw
@immutable
class TonTransactionTypeStakeDicePayout extends TonTransactionType {
  const TonTransactionTypeStakeDicePayout();

  static const String constructor = 'tonTransactionTypeStakeDicePayout';

  static TonTransactionTypeStakeDicePayout? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TonTransactionTypeStakeDicePayout();
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
