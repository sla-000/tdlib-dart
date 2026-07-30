// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Resends the 2-step verification recovery email address verification code
/// Returns [PasswordState]
@immutable
class ResendRecoveryEmailAddressCode extends TdFunction {
  const ResendRecoveryEmailAddressCode();

  static const String constructor = 'resendRecoveryEmailAddressCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ResendRecoveryEmailAddressCode);

  @override
  int get hashCode => runtimeType.hashCode;
}
