// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a user by their identifier. This is an offline
/// method if the current user is not a bot
/// Returns [User]
@immutable
class GetUser extends TdFunction {
  const GetUser({
    required this.userId,
  });

  /// [userId] User identifier
  final int userId;

  static const String constructor = 'getUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetUser &&
          const DeepCollectionEquality().equals(other.userId, userId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(userId)]);
}
