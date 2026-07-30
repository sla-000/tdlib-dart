// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks the 2-step verification recovery email address verification code
/// Returns [PasswordState]
@immutable
class CheckRecoveryEmailAddressCode extends TdFunction {
  const CheckRecoveryEmailAddressCode({
    required this.code,
  });

  /// [code] Verification code to check
  final String code;

  static const String constructor = 'checkRecoveryEmailAddressCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CheckRecoveryEmailAddressCode &&
          const DeepCollectionEquality().equals(other.code, code));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(code)]);
}
