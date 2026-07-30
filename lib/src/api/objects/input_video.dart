// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A video to be sent
@immutable
class InputVideo extends TdObject {
  const InputVideo({
    required this.video,
    this.thumbnail,
    this.cover,
    required this.startTimestamp,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
    required this.supportsStreaming,
  });

  /// [video] Video file to be sent. The video is expected to be re-encoded to
  /// MPEG4 format with H.264 codec by the sender
  final InputFile video;

  /// [thumbnail] Video thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [cover] Cover of the video; pass null to skip cover uploading; not
  /// supported in secret chats and for self-destructing messages
  final InputFile? cover;

  /// [startTimestamp] Timestamp from which the video playing must start, in
  /// seconds
  final int startTimestamp;

  /// [addedStickerFileIds] File identifiers of the stickers added to the video,
  /// if applicable
  final List<int> addedStickerFileIds;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [width] Video width
  final int width;

  /// [height] Video height
  final int height;

  /// [supportsStreaming] True, if the video is expected to be streamed
  final bool supportsStreaming;

  static const String constructor = 'inputVideo';

  static InputVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputVideo(
      video: InputFile.fromJson(json['video'] as Map<String, dynamic>?)!,
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      cover: InputFile.fromJson(json['cover'] as Map<String, dynamic>?),
      startTimestamp: json['start_timestamp'] as int,
      addedStickerFileIds: List<int>.from(
          ((json['added_sticker_file_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      duration: json['duration'] as int,
      width: json['width'] as int,
      height: json['height'] as int,
      supportsStreaming: json['supports_streaming'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'cover': cover?.toJson(),
        'start_timestamp': startTimestamp,
        'added_sticker_file_ids':
            addedStickerFileIds.map((item) => item).toList(),
        'duration': duration,
        'width': width,
        'height': height,
        'supports_streaming': supportsStreaming,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputVideo &&
          const DeepCollectionEquality().equals(other.video, video) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality().equals(other.cover, cover) &&
          const DeepCollectionEquality()
              .equals(other.startTimestamp, startTimestamp) &&
          const DeepCollectionEquality()
              .equals(other.addedStickerFileIds, addedStickerFileIds) &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height) &&
          const DeepCollectionEquality()
              .equals(other.supportsStreaming, supportsStreaming));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(video),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(cover),
        const DeepCollectionEquality().hash(startTimestamp),
        const DeepCollectionEquality().hash(addedStickerFileIds),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height),
        const DeepCollectionEquality().hash(supportsStreaming)
      ]);
}
