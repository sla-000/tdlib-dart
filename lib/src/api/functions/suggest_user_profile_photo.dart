// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Suggests a profile photo to another regular user with common messages and
/// allowing non-paid messages
/// Returns [Ok]
@immutable
class SuggestUserProfilePhoto extends TdFunction {
  const SuggestUserProfilePhoto({
    required this.userId,
    required this.photo,
  });

  /// [userId] User identifier
  final int userId;

  /// [photo] Profile photo to suggest; inputChatPhotoPrevious isn't supported
  /// in this function
  final InputChatPhoto photo;

  static const String constructor = 'suggestUserProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'photo': photo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SuggestUserProfilePhoto &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.photo, photo));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(photo)
      ]);
}
