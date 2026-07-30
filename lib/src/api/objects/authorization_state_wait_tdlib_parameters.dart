// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Initialization parameters are needed. Call setTdlibParameters to provide
/// them
@immutable
class AuthorizationStateWaitTdlibParameters extends AuthorizationState {
  const AuthorizationStateWaitTdlibParameters();

  static const String constructor = 'authorizationStateWaitTdlibParameters';

  static AuthorizationStateWaitTdlibParameters? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateWaitTdlibParameters();
  }

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
          other is AuthorizationStateWaitTdlibParameters);

  @override
  int get hashCode => runtimeType.hashCode;
}
