// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes a profile photo for the current user
/// Returns [Ok]
@immutable
class SetProfilePhoto extends TdFunction {
  const SetProfilePhoto({
    required this.photo,
    required this.isPublic,
  });

  /// [photo] Profile photo to set
  final InputChatPhoto photo;

  /// [isPublic] Pass true to set the public photo, which will be visible even
  /// if the main photo is hidden by privacy settings
  final bool isPublic;

  static const String constructor = 'setProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        'is_public': isPublic,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetProfilePhoto &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality().equals(other.isPublic, isPublic));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(isPublic)
      ]);
}
