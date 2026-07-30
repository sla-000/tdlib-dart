// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a 2-step verification recovery email address that was previously
/// set up. This method can be used to verify a password provided by the user
/// Returns [RecoveryEmailAddress]
@immutable
class GetRecoveryEmailAddress extends TdFunction {
  const GetRecoveryEmailAddress({
    required this.password,
  });

  /// [password] The 2-step verification password for the current user
  final String password;

  static const String constructor = 'getRecoveryEmailAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetRecoveryEmailAddress &&
          const DeepCollectionEquality().equals(other.password, password));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(password)]);
}
