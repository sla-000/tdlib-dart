// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// TDLib needs the user's authentication code sent to an email address to
/// authorize. Call checkAuthenticationEmailCode to provide the code
@immutable
class AuthorizationStateWaitEmailCode extends AuthorizationState {
  const AuthorizationStateWaitEmailCode({
    required this.allowAppleId,
    required this.allowGoogleId,
    required this.codeInfo,
    this.emailAddressResetState,
  });

  /// [allowAppleId] True, if authorization through Apple ID is allowed
  final bool allowAppleId;

  /// [allowGoogleId] True, if authorization through Google ID is allowed
  final bool allowGoogleId;

  /// [codeInfo] Information about the sent authentication code
  final EmailAddressAuthenticationCodeInfo codeInfo;

  /// [emailAddressResetState] Reset state of the email address; may be null if
  /// the email address can't be reset
  final EmailAddressResetState? emailAddressResetState;

  static const String constructor = 'authorizationStateWaitEmailCode';

  static AuthorizationStateWaitEmailCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitEmailCode(
      allowAppleId: json['allow_apple_id'] as bool,
      allowGoogleId: json['allow_google_id'] as bool,
      codeInfo: EmailAddressAuthenticationCodeInfo.fromJson(
          json['code_info'] as Map<String, dynamic>?)!,
      emailAddressResetState: EmailAddressResetState.fromJson(
          json['email_address_reset_state'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'allow_apple_id': allowAppleId,
        'allow_google_id': allowGoogleId,
        'code_info': codeInfo.toJson(),
        'email_address_reset_state': emailAddressResetState?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AuthorizationStateWaitEmailCode &&
          const DeepCollectionEquality()
              .equals(other.allowAppleId, allowAppleId) &&
          const DeepCollectionEquality()
              .equals(other.allowGoogleId, allowGoogleId) &&
          const DeepCollectionEquality().equals(other.codeInfo, codeInfo) &&
          const DeepCollectionEquality()
              .equals(other.emailAddressResetState, emailAddressResetState));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(allowAppleId),
        const DeepCollectionEquality().hash(allowGoogleId),
        const DeepCollectionEquality().hash(codeInfo),
        const DeepCollectionEquality().hash(emailAddressResetState)
      ]);
}
