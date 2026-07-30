// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a deposit of Telegram Stars from Google Play; relevant
/// for regular users only
@immutable
class StarTransactionTypeGooglePlayDeposit extends StarTransactionType {
  const StarTransactionTypeGooglePlayDeposit();

  static const String constructor = 'starTransactionTypeGooglePlayDeposit';

  static StarTransactionTypeGooglePlayDeposit? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypeGooglePlayDeposit();
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
          other is StarTransactionTypeGooglePlayDeposit);

  @override
  int get hashCode => runtimeType.hashCode;
}
