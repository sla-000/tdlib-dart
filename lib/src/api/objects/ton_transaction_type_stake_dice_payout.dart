// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TonTransactionTypeStakeDicePayout);

  @override
  int get hashCode => runtimeType.hashCode;
}
