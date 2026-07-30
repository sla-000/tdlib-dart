// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks the 2-step verification password for correctness. Works only when
/// the current authorization state is authorizationStateWaitPassword
/// Returns [Ok]
@immutable
class CheckAuthenticationPassword extends TdFunction {
  const CheckAuthenticationPassword({
    required this.password,
  });

  /// [password] The 2-step verification password to check
  final String password;

  static const String constructor = 'checkAuthenticationPassword';

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
          other is CheckAuthenticationPassword &&
          const DeepCollectionEquality().equals(other.password, password));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(password)]);
}
