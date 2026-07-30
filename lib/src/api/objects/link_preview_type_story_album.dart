// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to an album of stories
@immutable
class LinkPreviewTypeStoryAlbum extends LinkPreviewType {
  const LinkPreviewTypeStoryAlbum({
    this.photoIcon,
    this.videoIcon,
  });

  /// [photoIcon] Icon of the album; may be null if none
  final Photo? photoIcon;

  /// [videoIcon] Video icon of the album; may be null if none
  final Video? videoIcon;

  static const String constructor = 'linkPreviewTypeStoryAlbum';

  static LinkPreviewTypeStoryAlbum? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeStoryAlbum(
      photoIcon: Photo.fromJson(json['photo_icon'] as Map<String, dynamic>?),
      videoIcon: Video.fromJson(json['video_icon'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo_icon': photoIcon?.toJson(),
        'video_icon': videoIcon?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LinkPreviewTypeStoryAlbum &&
          const DeepCollectionEquality().equals(other.photoIcon, photoIcon) &&
          const DeepCollectionEquality().equals(other.videoIcon, videoIcon));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(photoIcon),
        const DeepCollectionEquality().hash(videoIcon)
      ]);
}
