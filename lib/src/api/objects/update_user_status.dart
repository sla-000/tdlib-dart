// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user went online or offline
@immutable
class UpdateUserStatus extends Update {
  const UpdateUserStatus({
    required this.userId,
    required this.status,
  });

  /// [userId] User identifier
  final int userId;

  /// [status] New status of the user
  final UserStatus status;

  static const String constructor = 'updateUserStatus';

  static UpdateUserStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUserStatus(
      userId: (json['user_id'] as int?) ?? 0,
      status: UserStatus.fromJson(json['status'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'status': status.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateUserStatus &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.status, status));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(status)
      ]);
}
