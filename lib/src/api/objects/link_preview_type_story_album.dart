import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
