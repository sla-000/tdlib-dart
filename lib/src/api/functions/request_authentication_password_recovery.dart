// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Requests to send a 2-step verification password recovery code to an email
/// address that was previously set up. Works only when the current
/// authorization state is authorizationStateWaitPassword
/// Returns [Ok]
@immutable
class RequestAuthenticationPasswordRecovery extends TdFunction {
  const RequestAuthenticationPasswordRecovery();

  static const String constructor = 'requestAuthenticationPasswordRecovery';

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
          other is RequestAuthenticationPasswordRecovery);

  @override
  int get hashCode => runtimeType.hashCode;
}
