// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a video player
@immutable
class LinkPreviewTypeEmbeddedVideoPlayer extends LinkPreviewType {
  const LinkPreviewTypeEmbeddedVideoPlayer({
    required this.url,
    this.video,
    this.thumbnail,
    required this.duration,
    required this.width,
    required this.height,
  });

  /// [url] URL of the external video player
  final String url;

  /// [video] The cached video; may be null if unknown
  final Video? video;

  /// [thumbnail] Thumbnail of the video; may be null if unknown
  final Photo? thumbnail;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [width] Expected width of the embedded player
  final int width;

  /// [height] Expected height of the embedded player
  final int height;

  static const String constructor = 'linkPreviewTypeEmbeddedVideoPlayer';

  static LinkPreviewTypeEmbeddedVideoPlayer? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeEmbeddedVideoPlayer(
      url: (json['url'] as String?) ?? '',
      video: Video.fromJson(json['video'] as Map<String, dynamic>?),
      thumbnail: Photo.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      duration: (json['duration'] as int?) ?? 0,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'video': video?.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'duration': duration,
        'width': width,
        'height': height,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LinkPreviewTypeEmbeddedVideoPlayer &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.video, video) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(video),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height)
      ]);
}
