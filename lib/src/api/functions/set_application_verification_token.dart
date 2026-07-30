// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Informs TDLib that application or reCAPTCHA verification has been
/// completed. Can be called before authorization
/// Returns [Ok]
@immutable
class SetApplicationVerificationToken extends TdFunction {
  const SetApplicationVerificationToken({
    required this.verificationId,
    required this.token,
  });

  /// [verificationId] Unique identifier for the verification process as
  /// received from updateApplicationVerificationRequired or
  /// updateApplicationRecaptchaVerificationRequired
  final int verificationId;

  /// [token] Play Integrity API token for the Android application, or secret
  /// from push notification for the iOS application for application
  /// verification, or reCAPTCHA token for reCAPTCHA verifications; pass an
  /// empty string to abort verification and receive the error
  /// "VERIFICATION_FAILED" for the request
  final String token;

  static const String constructor = 'setApplicationVerificationToken';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'verification_id': verificationId,
        'token': token,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetApplicationVerificationToken &&
          const DeepCollectionEquality()
              .equals(other.verificationId, verificationId) &&
          const DeepCollectionEquality().equals(other.token, token));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(verificationId),
        const DeepCollectionEquality().hash(token)
      ]);
}
