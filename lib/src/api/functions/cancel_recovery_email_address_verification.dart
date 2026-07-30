// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Cancels verification of the 2-step verification recovery email address
/// Returns [PasswordState]
@immutable
class CancelRecoveryEmailAddressVerification extends TdFunction {
  const CancelRecoveryEmailAddressVerification();

  static const String constructor = 'cancelRecoveryEmailAddressVerification';

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
          other is CancelRecoveryEmailAddressVerification);

  @override
  int get hashCode => runtimeType.hashCode;
}
