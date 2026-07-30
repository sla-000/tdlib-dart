// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns full information about a user by their identifier
/// Returns [UserFullInfo]
@immutable
class GetUserFullInfo extends TdFunction {
  const GetUserFullInfo({
    required this.userId,
  });

  /// [userId] User identifier
  final int userId;

  static const String constructor = 'getUserFullInfo';

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
          other is GetUserFullInfo &&
          const DeepCollectionEquality().equals(other.userId, userId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(userId)]);
}
