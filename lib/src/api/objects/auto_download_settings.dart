// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains auto-download settings
@immutable
class AutoDownloadSettings extends TdObject {
  const AutoDownloadSettings({
    required this.isAutoDownloadEnabled,
    required this.maxPhotoFileSize,
    required this.maxVideoFileSize,
    required this.maxOtherFileSize,
    required this.videoUploadBitrate,
    required this.preloadLargeVideos,
    required this.preloadNextAudio,
    required this.preloadStories,
    required this.useLessDataForCalls,
  });

  /// [isAutoDownloadEnabled] True, if the auto-download is enabled
  final bool isAutoDownloadEnabled;

  /// [maxPhotoFileSize] The maximum size of a photo file to be auto-downloaded,
  /// in bytes
  final int maxPhotoFileSize;

  /// [maxVideoFileSize] The maximum size of a video file to be auto-downloaded,
  /// in bytes
  final int maxVideoFileSize;

  /// [maxOtherFileSize] The maximum size of other file types to be
  /// auto-downloaded, in bytes
  final int maxOtherFileSize;

  /// [videoUploadBitrate] The maximum suggested bitrate for uploaded videos, in
  /// kbit/s
  final int videoUploadBitrate;

  /// [preloadLargeVideos] True, if the beginning of video files needs to be
  /// preloaded for instant playback
  final bool preloadLargeVideos;

  /// [preloadNextAudio] True, if the next audio track needs to be preloaded
  /// while the user is listening to an audio file
  final bool preloadNextAudio;

  /// [preloadStories] True, if stories need to be preloaded
  final bool preloadStories;

  /// [useLessDataForCalls] True, if "use less data for calls" option needs to
  /// be enabled
  final bool useLessDataForCalls;

  static const String constructor = 'autoDownloadSettings';

  static AutoDownloadSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AutoDownloadSettings(
      isAutoDownloadEnabled:
          (json['is_auto_download_enabled'] as bool?) ?? false,
      maxPhotoFileSize: (json['max_photo_file_size'] as int?) ?? 0,
      maxVideoFileSize: (json['max_video_file_size'] as int?) ?? 0,
      maxOtherFileSize: (json['max_other_file_size'] as int?) ?? 0,
      videoUploadBitrate: (json['video_upload_bitrate'] as int?) ?? 0,
      preloadLargeVideos: (json['preload_large_videos'] as bool?) ?? false,
      preloadNextAudio: (json['preload_next_audio'] as bool?) ?? false,
      preloadStories: (json['preload_stories'] as bool?) ?? false,
      useLessDataForCalls: (json['use_less_data_for_calls'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_auto_download_enabled': isAutoDownloadEnabled,
        'max_photo_file_size': maxPhotoFileSize,
        'max_video_file_size': maxVideoFileSize,
        'max_other_file_size': maxOtherFileSize,
        'video_upload_bitrate': videoUploadBitrate,
        'preload_large_videos': preloadLargeVideos,
        'preload_next_audio': preloadNextAudio,
        'preload_stories': preloadStories,
        'use_less_data_for_calls': useLessDataForCalls,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AutoDownloadSettings &&
          const DeepCollectionEquality()
              .equals(other.isAutoDownloadEnabled, isAutoDownloadEnabled) &&
          const DeepCollectionEquality()
              .equals(other.maxPhotoFileSize, maxPhotoFileSize) &&
          const DeepCollectionEquality()
              .equals(other.maxVideoFileSize, maxVideoFileSize) &&
          const DeepCollectionEquality()
              .equals(other.maxOtherFileSize, maxOtherFileSize) &&
          const DeepCollectionEquality()
              .equals(other.videoUploadBitrate, videoUploadBitrate) &&
          const DeepCollectionEquality()
              .equals(other.preloadLargeVideos, preloadLargeVideos) &&
          const DeepCollectionEquality()
              .equals(other.preloadNextAudio, preloadNextAudio) &&
          const DeepCollectionEquality()
              .equals(other.preloadStories, preloadStories) &&
          const DeepCollectionEquality()
              .equals(other.useLessDataForCalls, useLessDataForCalls));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isAutoDownloadEnabled),
        const DeepCollectionEquality().hash(maxPhotoFileSize),
        const DeepCollectionEquality().hash(maxVideoFileSize),
        const DeepCollectionEquality().hash(maxOtherFileSize),
        const DeepCollectionEquality().hash(videoUploadBitrate),
        const DeepCollectionEquality().hash(preloadLargeVideos),
        const DeepCollectionEquality().hash(preloadNextAudio),
        const DeepCollectionEquality().hash(preloadStories),
        const DeepCollectionEquality().hash(useLessDataForCalls)
      ]);
}
