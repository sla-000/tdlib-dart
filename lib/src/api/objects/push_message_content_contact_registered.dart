// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A contact has registered with Telegram
@immutable
class PushMessageContentContactRegistered extends PushMessageContent {
  const PushMessageContentContactRegistered({
    required this.asPremiumAccount,
  });

  /// [asPremiumAccount] True, if the user joined Telegram as a Telegram Premium
  /// account
  final bool asPremiumAccount;

  static const String constructor = 'pushMessageContentContactRegistered';

  static PushMessageContentContactRegistered? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentContactRegistered(
      asPremiumAccount: (json['as_premium_account'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'as_premium_account': asPremiumAccount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentContactRegistered &&
          const DeepCollectionEquality()
              .equals(other.asPremiumAccount, asPremiumAccount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(asPremiumAccount)]);
}
