// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The media is a photo
@immutable
class PaidMediaPhoto extends PaidMedia {
  const PaidMediaPhoto({
    required this.photo,
    this.video,
  });

  /// [photo] The photo
  final Photo photo;

  /// [video] The video representing the live photo; may be null if the photo is
  /// static
  final Video? video;

  static const String constructor = 'paidMediaPhoto';

  static PaidMediaPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaidMediaPhoto(
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?)!,
      video: Video.fromJson(json['video'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        'video': video?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PaidMediaPhoto &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality().equals(other.video, video));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(video)
      ]);
}
