// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a deposit of Telegram Stars from App Store; relevant
/// for regular users only
@immutable
class StarTransactionTypeAppStoreDeposit extends StarTransactionType {
  const StarTransactionTypeAppStoreDeposit();

  static const String constructor = 'starTransactionTypeAppStoreDeposit';

  static StarTransactionTypeAppStoreDeposit? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypeAppStoreDeposit();
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
          other is StarTransactionTypeAppStoreDeposit);

  @override
  int get hashCode => runtimeType.hashCode;
}
