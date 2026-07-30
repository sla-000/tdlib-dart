// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A digit-only authentication code is delivered via Firebase Authentication
/// to the official Android application
@immutable
class AuthenticationCodeTypeFirebaseAndroid extends AuthenticationCodeType {
  const AuthenticationCodeTypeFirebaseAndroid({
    required this.deviceVerificationParameters,
    required this.length,
  });

  /// [deviceVerificationParameters] Parameters to be used for device
  /// verification
  final FirebaseDeviceVerificationParameters deviceVerificationParameters;

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeFirebaseAndroid';

  static AuthenticationCodeTypeFirebaseAndroid? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeFirebaseAndroid(
      deviceVerificationParameters:
          FirebaseDeviceVerificationParameters.fromJson(
              json['device_verification_parameters'] as Map<String, dynamic>?)!,
      length: json['length'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'device_verification_parameters': deviceVerificationParameters.toJson(),
        'length': length,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AuthenticationCodeTypeFirebaseAndroid &&
          const DeepCollectionEquality().equals(
              other.deviceVerificationParameters,
              deviceVerificationParameters) &&
          const DeepCollectionEquality().equals(other.length, length));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(deviceVerificationParameters),
        const DeepCollectionEquality().hash(length)
      ]);
}
