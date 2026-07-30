import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      asPremiumAccount: json['as_premium_account'] as bool,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
