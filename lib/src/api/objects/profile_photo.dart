// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a user profile photo
@immutable
class ProfilePhoto extends TdObject {
  const ProfilePhoto({
    required this.id,
    required this.small,
    required this.big,
    this.minithumbnail,
    required this.hasAnimation,
    required this.isPersonal,
  });

  /// [id] Photo identifier; 0 for an empty photo. Can be used to find a photo
  /// in a list of user profile photos
  final int id;

  /// [small] A small (160x160) user profile photo. The file can be downloaded
  /// only before the photo is changed
  final File small;

  /// [big] A big (640x640) user profile photo. The file can be downloaded only
  /// before the photo is changed
  final File big;

  /// [minithumbnail] User profile photo minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [hasAnimation] True, if the photo has animated variant
  final bool hasAnimation;

  /// [isPersonal] True, if the photo is visible only for the current user
  final bool isPersonal;

  static const String constructor = 'profilePhoto';

  static ProfilePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProfilePhoto(
      id: int.tryParse(json['id']) ?? 0,
      small: File.fromJson(json['small'] as Map<String, dynamic>?)!,
      big: File.fromJson(json['big'] as Map<String, dynamic>?)!,
      minithumbnail: Minithumbnail.fromJson(
          json['minithumbnail'] as Map<String, dynamic>?),
      hasAnimation: json['has_animation'] as bool,
      isPersonal: json['is_personal'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'small': small.toJson(),
        'big': big.toJson(),
        'minithumbnail': minithumbnail?.toJson(),
        'has_animation': hasAnimation,
        'is_personal': isPersonal,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ProfilePhoto &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.small, small) &&
          const DeepCollectionEquality().equals(other.big, big) &&
          const DeepCollectionEquality()
              .equals(other.minithumbnail, minithumbnail) &&
          const DeepCollectionEquality()
              .equals(other.hasAnimation, hasAnimation) &&
          const DeepCollectionEquality().equals(other.isPersonal, isPersonal));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(small),
        const DeepCollectionEquality().hash(big),
        const DeepCollectionEquality().hash(minithumbnail),
        const DeepCollectionEquality().hash(hasAnimation),
        const DeepCollectionEquality().hash(isPersonal)
      ]);
}
