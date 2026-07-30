// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Resends the login email address verification code
/// Returns [EmailAddressAuthenticationCodeInfo]
@immutable
class ResendLoginEmailAddressCode extends TdFunction {
  const ResendLoginEmailAddressCode();

  static const String constructor = 'resendLoginEmailAddressCode';

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
          other is ResendLoginEmailAddressCode);

  @override
  int get hashCode => runtimeType.hashCode;
}
