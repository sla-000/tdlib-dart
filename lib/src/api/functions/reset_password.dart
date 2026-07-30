// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes 2-step verification password without previous password and access
/// to recovery email address. The password can't be reset immediately and the
/// request needs to be repeated after the specified time
/// Returns [ResetPasswordResult]
@immutable
class ResetPassword extends TdFunction {
  const ResetPassword();

  static const String constructor = 'resetPassword';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ResetPassword);

  @override
  int get hashCode => runtimeType.hashCode;
}
