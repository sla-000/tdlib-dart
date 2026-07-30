// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns support information for the given user; for Telegram support only
/// Returns [UserSupportInfo]
@immutable
class GetUserSupportInfo extends TdFunction {
  const GetUserSupportInfo({
    required this.userId,
  });

  /// [userId] User identifier
  final int userId;

  static const String constructor = 'getUserSupportInfo';

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
          other is GetUserSupportInfo &&
          const DeepCollectionEquality().equals(other.userId, userId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(userId)]);
}
