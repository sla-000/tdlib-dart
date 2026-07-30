// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Some data of a user has changed. This update is guaranteed to come before
/// the user identifier is returned to the application
@immutable
class UpdateUser extends Update {
  const UpdateUser({
    required this.user,
  });

  /// [user] New data about the user
  final User user;

  static const String constructor = 'updateUser';

  static UpdateUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUser(
      user: User.fromJson(json['user'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user': user.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateUser &&
          const DeepCollectionEquality().equals(other.user, user));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(user)]);
}
