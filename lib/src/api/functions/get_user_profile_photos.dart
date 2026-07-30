// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the profile photos of a user. Personal and public photo aren't
/// returned
/// Returns [ChatPhotos]
@immutable
class GetUserProfilePhotos extends TdFunction {
  const GetUserProfilePhotos({
    required this.userId,
    required this.offset,
    required this.limit,
  });

  /// [userId] User identifier
  final int userId;

  /// [offset] The number of photos to skip; must be non-negative
  final int offset;

  /// [limit] The maximum number of photos to be returned; up to 100
  final int limit;

  static const String constructor = 'getUserProfilePhotos';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetUserProfilePhotos &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit)
      ]);
}
