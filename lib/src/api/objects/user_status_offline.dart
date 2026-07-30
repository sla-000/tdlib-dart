// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user is offline
@immutable
class UserStatusOffline extends UserStatus {
  const UserStatusOffline({
    required this.wasOnline,
  });

  /// [wasOnline] Point in time (Unix timestamp) when the user was last online
  final int wasOnline;

  static const String constructor = 'userStatusOffline';

  static UserStatusOffline? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserStatusOffline(
      wasOnline: (json['was_online'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'was_online': wasOnline,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UserStatusOffline &&
          const DeepCollectionEquality().equals(other.wasOnline, wasOnline));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(wasOnline)]);
}
