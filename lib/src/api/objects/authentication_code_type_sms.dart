// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A digit-only authentication code is delivered via an SMS message to the
/// specified phone number; non-official applications may not receive this
/// type of code
@immutable
class AuthenticationCodeTypeSms extends AuthenticationCodeType {
  const AuthenticationCodeTypeSms({
    required this.length,
  });

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeSms';

  static AuthenticationCodeTypeSms? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeSms(
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
          other is AuthenticationCodeTypeSms &&
          const DeepCollectionEquality().equals(other.length, length));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(length)]);
}
