// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes a personal profile photo of a contact user
/// Returns [Ok]
@immutable
class SetUserPersonalProfilePhoto extends TdFunction {
  const SetUserPersonalProfilePhoto({
    required this.userId,
    this.photo,
  });

  /// [userId] User identifier
  final int userId;

  /// [photo] Profile photo to set; pass null to delete the photo;
  /// inputChatPhotoPrevious isn't supported in this function
  final InputChatPhoto? photo;

  static const String constructor = 'setUserPersonalProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'photo': photo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetUserPersonalProfilePhoto &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.photo, photo));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(photo)
      ]);
}
