// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a withdrawal of earned Telegram Stars to Telegram Ad
/// platform; relevant for bots and channel chats only
@immutable
class StarTransactionTypeTelegramAdsWithdrawal extends StarTransactionType {
  const StarTransactionTypeTelegramAdsWithdrawal();

  static const String constructor = 'starTransactionTypeTelegramAdsWithdrawal';

  static StarTransactionTypeTelegramAdsWithdrawal? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypeTelegramAdsWithdrawal();
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
          other is StarTransactionTypeTelegramAdsWithdrawal);

  @override
  int get hashCode => runtimeType.hashCode;
}
