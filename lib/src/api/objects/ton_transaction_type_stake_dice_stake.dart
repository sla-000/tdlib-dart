// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a payment for stake dice throw
@immutable
class TonTransactionTypeStakeDiceStake extends TonTransactionType {
  const TonTransactionTypeStakeDiceStake();

  static const String constructor = 'tonTransactionTypeStakeDiceStake';

  static TonTransactionTypeStakeDiceStake? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TonTransactionTypeStakeDiceStake();
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
          other is TonTransactionTypeStakeDiceStake);

  @override
  int get hashCode => runtimeType.hashCode;
}
