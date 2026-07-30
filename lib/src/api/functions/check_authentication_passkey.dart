import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks a passkey to log in to the corresponding account. Call
/// getAuthenticationPasskeyParameters to get parameters for the passkey.
/// Works only when the current authorization state is
/// authorizationStateWaitPhoneNumber or
/// authorizationStateWaitOtherDeviceConfirmation, or if there is no pending
/// authentication query and the current authorization state is
/// authorizationStateWaitPremiumPurchase, authorizationStateWaitEmailAddress,
/// authorizationStateWaitEmailCode, authorizationStateWaitCode,
/// authorizationStateWaitRegistration, or authorizationStateWaitPassword
/// Returns [Ok]
@immutable
class CheckAuthenticationPasskey extends TdFunction {
  const CheckAuthenticationPasskey({
    required this.credentialId,
    required this.clientData,
    required this.authenticatorData,
    required this.signature,
    required this.userHandle,
  });

  /// [credentialId] Base64url-encoded identifier of the credential
  final String credentialId;

  /// [clientData] JSON-encoded client data
  final String clientData;

  /// [authenticatorData] Authenticator data of the application that created the
  /// credential
  final String authenticatorData;

  /// [signature] Cryptographic signature of the credential
  final String signature;

  /// [userHandle] User handle of the passkey
  final String userHandle;

  static const String constructor = 'checkAuthenticationPasskey';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'credential_id': credentialId,
        'client_data': clientData,
        'authenticator_data': authenticatorData,
        'signature': signature,
        'user_handle': userHandle,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
