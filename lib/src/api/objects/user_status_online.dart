// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user is online
@immutable
class UserStatusOnline extends UserStatus {
  const UserStatusOnline({
    required this.expires,
  });

  /// [expires] Point in time (Unix timestamp) when the user's online status
  /// will expire
  final int expires;

  static const String constructor = 'userStatusOnline';

  static UserStatusOnline? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserStatusOnline(
      expires: json['expires'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'expires': expires,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UserStatusOnline &&
          const DeepCollectionEquality().equals(other.expires, expires));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(expires)]);
}
