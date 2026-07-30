// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user is currently logging out
@immutable
class AuthorizationStateLoggingOut extends AuthorizationState {
  const AuthorizationStateLoggingOut();

  static const String constructor = 'authorizationStateLoggingOut';

  static AuthorizationStateLoggingOut? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateLoggingOut();
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
          other is AuthorizationStateLoggingOut);

  @override
  int get hashCode => runtimeType.hashCode;
}
