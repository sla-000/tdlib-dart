// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Information about the authentication code that was sent
@immutable
class AuthenticationCodeInfo extends TdObject {
  const AuthenticationCodeInfo({
    required this.phoneNumber,
    required this.type,
    this.nextType,
    required this.timeout,
  });

  /// [phoneNumber] A phone number that is being authenticated
  final String phoneNumber;

  /// [type] The way the code was sent to the user
  final AuthenticationCodeType type;

  /// [nextType] The way the next code will be sent to the user; may be null
  final AuthenticationCodeType? nextType;

  /// [timeout] Timeout before the code can be re-sent, in seconds
  final int timeout;

  static const String constructor = 'authenticationCodeInfo';

  static AuthenticationCodeInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeInfo(
      phoneNumber: (json['phone_number'] as String?) ?? '',
      type: AuthenticationCodeType.fromJson(
          json['type'] as Map<String, dynamic>?)!,
      nextType: AuthenticationCodeType.fromJson(
          json['next_type'] as Map<String, dynamic>?),
      timeout: (json['timeout'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number': phoneNumber,
        'type': type.toJson(),
        'next_type': nextType?.toJson(),
        'timeout': timeout,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AuthenticationCodeInfo &&
          const DeepCollectionEquality()
              .equals(other.phoneNumber, phoneNumber) &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality().equals(other.nextType, nextType) &&
          const DeepCollectionEquality().equals(other.timeout, timeout));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(phoneNumber),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(nextType),
        const DeepCollectionEquality().hash(timeout)
      ]);
}
