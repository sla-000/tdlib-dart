// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes parameters to be used for device verification
@immutable
abstract class FirebaseDeviceVerificationParameters extends TdObject {
  const FirebaseDeviceVerificationParameters();

  static const String constructor = 'firebaseDeviceVerificationParameters';

  /// Inherited by:
  /// [FirebaseDeviceVerificationParametersPlayIntegrity]
  /// [FirebaseDeviceVerificationParametersSafetyNet]
  static FirebaseDeviceVerificationParameters? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case FirebaseDeviceVerificationParametersPlayIntegrity.constructor:
        return FirebaseDeviceVerificationParametersPlayIntegrity.fromJson(json);
      case FirebaseDeviceVerificationParametersSafetyNet.constructor:
        return FirebaseDeviceVerificationParametersSafetyNet.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is FirebaseDeviceVerificationParameters);

  @override
  int get hashCode => runtimeType.hashCode;
}
