// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a video file
@immutable
class Video extends TdObject {
  const Video({
    required this.duration,
    required this.width,
    required this.height,
    required this.fileName,
    required this.mimeType,
    required this.hasStickers,
    required this.supportsStreaming,
    this.minithumbnail,
    this.thumbnail,
    required this.video,
  });

  /// [duration] Duration of the video, in seconds; as defined by the sender
  final int duration;

  /// [width] Video width; as defined by the sender
  final int width;

  /// [height] Video height; as defined by the sender
  final int height;

  /// [fileName] Original name of the file; as defined by the sender
  final String fileName;

  /// [mimeType] MIME type of the file; as defined by the sender
  final String mimeType;

  /// [hasStickers] True, if stickers were added to the video. The list of
  /// corresponding sticker sets can be received using getAttachedStickerSets
  final bool hasStickers;

  /// [supportsStreaming] True, if the video is expected to be streamed
  final bool supportsStreaming;

  /// [minithumbnail] Video minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Video thumbnail in JPEG or MPEG4 format; as defined by the
  /// sender; may be null
  final Thumbnail? thumbnail;

  /// [video] File containing the video
  final File video;

  static const String constructor = 'video';

  static Video? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Video(
      duration: (json['duration'] as int?) ?? 0,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      fileName: (json['file_name'] as String?) ?? '',
      mimeType: (json['mime_type'] as String?) ?? '',
      hasStickers: (json['has_stickers'] as bool?) ?? false,
      supportsStreaming: (json['supports_streaming'] as bool?) ?? false,
      minithumbnail: Minithumbnail.fromJson(
          json['minithumbnail'] as Map<String, dynamic>?),
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
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
        'file_name': fileName,
        'mime_type': mimeType,
        'has_stickers': hasStickers,
        'supports_streaming': supportsStreaming,
        'minithumbnail': minithumbnail?.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'video': video.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Video &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height) &&
          const DeepCollectionEquality().equals(other.fileName, fileName) &&
          const DeepCollectionEquality().equals(other.mimeType, mimeType) &&
          const DeepCollectionEquality()
              .equals(other.hasStickers, hasStickers) &&
          const DeepCollectionEquality()
              .equals(other.supportsStreaming, supportsStreaming) &&
          const DeepCollectionEquality()
              .equals(other.minithumbnail, minithumbnail) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality().equals(other.video, video));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height),
        const DeepCollectionEquality().hash(fileName),
        const DeepCollectionEquality().hash(mimeType),
        const DeepCollectionEquality().hash(hasStickers),
        const DeepCollectionEquality().hash(supportsStreaming),
        const DeepCollectionEquality().hash(minithumbnail),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(video)
      ]);
}
