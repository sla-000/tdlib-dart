// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a user who had or will have a birthday soon
@immutable
class CloseBirthdayUser extends TdObject {
  const CloseBirthdayUser({
    required this.userId,
    required this.birthdate,
  });

  /// [userId] User identifier
  final int userId;

  /// [birthdate] Birthdate of the user
  final Birthdate birthdate;

  static const String constructor = 'closeBirthdayUser';

  static CloseBirthdayUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CloseBirthdayUser(
      userId: json['user_id'] as int,
      birthdate:
          Birthdate.fromJson(json['birthdate'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'birthdate': birthdate.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CloseBirthdayUser &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.birthdate, birthdate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(birthdate)
      ]);
}
