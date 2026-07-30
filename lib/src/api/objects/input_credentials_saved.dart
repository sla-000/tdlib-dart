// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Applies if a user chooses some previously saved payment credentials. To
/// use their previously saved credentials, the user must have a valid
/// temporary password
@immutable
class InputCredentialsSaved extends InputCredentials {
  const InputCredentialsSaved({
    required this.savedCredentialsId,
  });

  /// [savedCredentialsId] Identifier of the saved credentials
  final String savedCredentialsId;

  static const String constructor = 'inputCredentialsSaved';

  static InputCredentialsSaved? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCredentialsSaved(
      savedCredentialsId: (json['saved_credentials_id'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'saved_credentials_id': savedCredentialsId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputCredentialsSaved &&
          const DeepCollectionEquality()
              .equals(other.savedCredentialsId, savedCredentialsId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(savedCredentialsId)]);
}
