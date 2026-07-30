// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Resends the code to verify an email address to be added to a user's
/// Telegram Passport
/// Returns [EmailAddressAuthenticationCodeInfo]
@immutable
class ResendEmailAddressVerificationCode extends TdFunction {
  const ResendEmailAddressVerificationCode();

  static const String constructor = 'resendEmailAddressVerificationCode';

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
          other is ResendEmailAddressVerificationCode);

  @override
  int get hashCode => runtimeType.hashCode;
}
