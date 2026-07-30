// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a video file posted as a story
@immutable
class StoryVideo extends TdObject {
  const StoryVideo({
    required this.duration,
    required this.width,
    required this.height,
    required this.hasStickers,
    required this.isAnimation,
    this.minithumbnail,
    this.thumbnail,
    required this.preloadPrefixSize,
    required this.coverFrameTimestamp,
    required this.video,
  });

  /// [duration] Duration of the video, in seconds
  final double duration;

  /// [width] Video width
  final int width;

  /// [height] Video height
  final int height;

  /// [hasStickers] True, if stickers were added to the video. The list of
  /// corresponding sticker sets can be received using getAttachedStickerSets
  final bool hasStickers;

  /// [isAnimation] True, if the video has no sound
  final bool isAnimation;

  /// [minithumbnail] Video minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Video thumbnail in JPEG or MPEG4 format; may be null
  final Thumbnail? thumbnail;

  /// [preloadPrefixSize] Size of file prefix, which is expected to be
  /// preloaded, in bytes
  final int preloadPrefixSize;

  /// [coverFrameTimestamp] Timestamp of the frame used as video thumbnail
  final double coverFrameTimestamp;

  /// [video] File containing the video
  final File video;

  static const String constructor = 'storyVideo';

  static StoryVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryVideo(
      duration: (json['duration'] as num?)?.toDouble() ?? 0.0,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      hasStickers: (json['has_stickers'] as bool?) ?? false,
      isAnimation: (json['is_animation'] as bool?) ?? false,
      minithumbnail: Minithumbnail.fromJson(
          json['minithumbnail'] as Map<String, dynamic>?),
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      preloadPrefixSize: (json['preload_prefix_size'] as int?) ?? 0,
      coverFrameTimestamp:
          (json['cover_frame_timestamp'] as num?)?.toDouble() ?? 0.0,
      video: File.fromJson(json['video'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'duration': duration,
        'width': width,
        'height': height,
        'has_stickers': hasStickers,
        'is_animation': isAnimation,
        'minithumbnail': minithumbnail?.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'preload_prefix_size': preloadPrefixSize,
        'cover_frame_timestamp': coverFrameTimestamp,
        'video': video.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoryVideo &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height) &&
          const DeepCollectionEquality()
              .equals(other.hasStickers, hasStickers) &&
          const DeepCollectionEquality()
              .equals(other.isAnimation, isAnimation) &&
          const DeepCollectionEquality()
              .equals(other.minithumbnail, minithumbnail) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality()
              .equals(other.preloadPrefixSize, preloadPrefixSize) &&
          const DeepCollectionEquality()
              .equals(other.coverFrameTimestamp, coverFrameTimestamp) &&
          const DeepCollectionEquality().equals(other.video, video));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height),
        const DeepCollectionEquality().hash(hasStickers),
        const DeepCollectionEquality().hash(isAnimation),
        const DeepCollectionEquality().hash(minithumbnail),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(preloadPrefixSize),
        const DeepCollectionEquality().hash(coverFrameTimestamp),
        const DeepCollectionEquality().hash(video)
      ]);
}
