// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Device verification must be performed with the classic Play Integrity
/// verification (https://developer.android.com/google/play/integrity/classic)
@immutable
class FirebaseDeviceVerificationParametersPlayIntegrity
    extends FirebaseDeviceVerificationParameters {
  const FirebaseDeviceVerificationParametersPlayIntegrity({
    required this.nonce,
    required this.cloudProjectNumber,
  });

  /// [nonce] Base64url-encoded nonce to pass to the Play Integrity API
  final String nonce;

  /// [cloudProjectNumber] Cloud project number to pass to the Play Integrity
  /// API
  final int cloudProjectNumber;

  static const String constructor =
      'firebaseDeviceVerificationParametersPlayIntegrity';

  static FirebaseDeviceVerificationParametersPlayIntegrity? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FirebaseDeviceVerificationParametersPlayIntegrity(
      nonce: (json['nonce'] as String?) ?? '',
      cloudProjectNumber: (json['cloud_project_number'] is int
              ? json['cloud_project_number'] as int
              : int.tryParse(json['cloud_project_number']?.toString() ?? '')) ??
          0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'nonce': nonce,
        'cloud_project_number': cloudProjectNumber.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is FirebaseDeviceVerificationParametersPlayIntegrity &&
          const DeepCollectionEquality().equals(other.nonce, nonce) &&
          const DeepCollectionEquality()
              .equals(other.cloudProjectNumber, cloudProjectNumber));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(nonce),
        const DeepCollectionEquality().hash(cloudProjectNumber)
      ]);
}
