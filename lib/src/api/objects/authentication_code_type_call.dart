// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A digit-only authentication code is delivered via a phone call to the
/// specified phone number
@immutable
class AuthenticationCodeTypeCall extends AuthenticationCodeType {
  const AuthenticationCodeTypeCall({
    required this.length,
  });

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeCall';

  static AuthenticationCodeTypeCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeCall(
      length: (json['length'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'length': length,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AuthenticationCodeTypeCall &&
          const DeepCollectionEquality().equals(other.length, length));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(length)]);
}
