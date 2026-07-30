// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes a profile photo
/// Returns [Ok]
@immutable
class DeleteProfilePhoto extends TdFunction {
  const DeleteProfilePhoto({
    required this.profilePhotoId,
  });

  /// [profilePhotoId] Identifier of the profile photo to delete
  final int profilePhotoId;

  static const String constructor = 'deleteProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'profile_photo_id': profilePhotoId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteProfilePhoto &&
          const DeepCollectionEquality()
              .equals(other.profilePhotoId, profilePhotoId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(profilePhotoId)]);
}
