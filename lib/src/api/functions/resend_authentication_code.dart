// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Resends an authentication code to the user. Works only when the current
/// authorization state is authorizationStateWaitCode, the next_code_type of
/// the result is not null and the server-specified timeout has passed, or
/// when the current authorization state is authorizationStateWaitEmailCode
/// Returns [Ok]
@immutable
class ResendAuthenticationCode extends TdFunction {
  const ResendAuthenticationCode({
    this.reason,
  });

  /// [reason] Reason of code resending; pass null if unknown
  final ResendCodeReason? reason;

  static const String constructor = 'resendAuthenticationCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reason': reason?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ResendAuthenticationCode &&
          const DeepCollectionEquality().equals(other.reason, reason));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(reason)]);
}
