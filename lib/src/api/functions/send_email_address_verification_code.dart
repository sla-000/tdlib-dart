// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends a code to verify an email address to be added to a user's Telegram
/// Passport
/// Returns [EmailAddressAuthenticationCodeInfo]
@immutable
class SendEmailAddressVerificationCode extends TdFunction {
  const SendEmailAddressVerificationCode({
    required this.emailAddress,
  });

  /// [emailAddress] Email address
  final String emailAddress;

  static const String constructor = 'sendEmailAddressVerificationCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'email_address': emailAddress,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendEmailAddressVerificationCode &&
          const DeepCollectionEquality()
              .equals(other.emailAddress, emailAddress));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(emailAddress)]);
}
