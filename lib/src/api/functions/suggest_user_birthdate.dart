// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Suggests a birthdate to another regular user with common messages and
/// allowing non-paid messages
/// Returns [Ok]
@immutable
class SuggestUserBirthdate extends TdFunction {
  const SuggestUserBirthdate({
    required this.userId,
    required this.birthdate,
  });

  /// [userId] User identifier
  final int userId;

  /// [birthdate] Birthdate to suggest
  final Birthdate birthdate;

  static const String constructor = 'suggestUserBirthdate';

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
          other is SuggestUserBirthdate &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.birthdate, birthdate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(birthdate)
      ]);
}
