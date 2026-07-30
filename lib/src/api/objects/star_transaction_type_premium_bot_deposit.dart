// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a deposit of Telegram Stars from the Premium bot;
/// relevant for regular users only
@immutable
class StarTransactionTypePremiumBotDeposit extends StarTransactionType {
  const StarTransactionTypePremiumBotDeposit();

  static const String constructor = 'starTransactionTypePremiumBotDeposit';

  static StarTransactionTypePremiumBotDeposit? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypePremiumBotDeposit();
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
          other is StarTransactionTypePremiumBotDeposit);

  @override
  int get hashCode => runtimeType.hashCode;
}
