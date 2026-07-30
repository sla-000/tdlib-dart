// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a deposit of Telegram Stars from Fragment; relevant for
/// regular users and bots only
@immutable
class StarTransactionTypeFragmentDeposit extends StarTransactionType {
  const StarTransactionTypeFragmentDeposit();

  static const String constructor = 'starTransactionTypeFragmentDeposit';

  static StarTransactionTypeFragmentDeposit? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypeFragmentDeposit();
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
          other is StarTransactionTypeFragmentDeposit);

  @override
  int get hashCode => runtimeType.hashCode;
}
