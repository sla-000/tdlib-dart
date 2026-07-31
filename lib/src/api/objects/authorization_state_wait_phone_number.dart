// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// TDLib needs the user's phone number to authorize. Call
/// setAuthenticationPhoneNumber to provide the phone number, or use
/// requestQrCodeAuthentication, getAuthenticationPasskeyParameters, or
/// checkAuthenticationBotToken for other authentication options
@immutable
class AuthorizationStateWaitPhoneNumber extends AuthorizationState {
  const AuthorizationStateWaitPhoneNumber();

  static const String constructor = 'authorizationStateWaitPhoneNumber';

  static AuthorizationStateWaitPhoneNumber? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateWaitPhoneNumber();
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
          other is AuthorizationStateWaitPhoneNumber);

  @override
  int get hashCode => runtimeType.hashCode;
}
