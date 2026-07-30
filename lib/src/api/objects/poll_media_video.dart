import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video
@immutable
class PollMediaVideo extends PollMedia {
  const PollMediaVideo({
    required this.video,
    required this.alternativeVideos,
    required this.storyboards,
    this.cover,
    required this.startTimestamp,
  });

  /// [video] The video description
  final Video video;

  /// [alternativeVideos] Alternative qualities of the video
  final List<AlternativeVideo> alternativeVideos;

  /// [storyboards] Available storyboards for the video
  final List<VideoStoryboard> storyboards;

  /// [cover] Cover of the video; may be null if none
  final Photo? cover;

  /// [startTimestamp] Timestamp from which the video playing must start, in
  /// seconds
  final int startTimestamp;

  static const String constructor = 'pollMediaVideo';

  static PollMediaVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollMediaVideo(
      video: Video.fromJson(json['video'] as Map<String, dynamic>?)!,
      alternativeVideos: List<AlternativeVideo>.from(
          ((json['alternative_videos'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => AlternativeVideo.fromJson(item))
              .toList()),
      storyboards: List<VideoStoryboard>.from(
          ((json['storyboards'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => VideoStoryboard.fromJson(item))
              .toList()),
      cover: Photo.fromJson(json['cover'] as Map<String, dynamic>?),
      startTimestamp: json['start_timestamp'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video.toJson(),
        'alternative_videos':
            alternativeVideos.map((item) => item.toJson()).toList(),
        'storyboards': storyboards.map((item) => item.toJson()).toList(),
        'cover': cover?.toJson(),
        'start_timestamp': startTimestamp,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
