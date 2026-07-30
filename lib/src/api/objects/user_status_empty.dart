// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user's status has never been changed
@immutable
class UserStatusEmpty extends UserStatus {
  const UserStatusEmpty();

  static const String constructor = 'userStatusEmpty';

  static UserStatusEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserStatusEmpty();
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
      (other.runtimeType == runtimeType && other is UserStatusEmpty);

  @override
  int get hashCode => runtimeType.hashCode;
}
