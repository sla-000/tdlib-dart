// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Creates a new temporary password for processing payments
/// Returns [TemporaryPasswordState]
@immutable
class CreateTemporaryPassword extends TdFunction {
  const CreateTemporaryPassword({
    required this.password,
    required this.validFor,
  });

  /// [password] The 2-step verification password of the current user
  final String password;

  /// [validFor] Time during which the temporary password will be valid, in
  /// seconds; must be between 60 and 86400
  final int validFor;

  static const String constructor = 'createTemporaryPassword';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'password': password,
        'valid_for': validFor,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CreateTemporaryPassword &&
          const DeepCollectionEquality().equals(other.password, password) &&
          const DeepCollectionEquality().equals(other.validFor, validFor));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(password),
        const DeepCollectionEquality().hash(validFor)
      ]);
}
