// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The media is a video
@immutable
class PaidMediaVideo extends PaidMedia {
  const PaidMediaVideo({
    required this.video,
    this.cover,
    required this.startTimestamp,
  });

  /// [video] The video
  final Video video;

  /// [cover] Cover of the video; may be null if none
  final Photo? cover;

  /// [startTimestamp] Timestamp from which the video playing must start, in
  /// seconds
  final int startTimestamp;

  static const String constructor = 'paidMediaVideo';

  static PaidMediaVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaidMediaVideo(
      video: Video.fromJson(json['video'] as Map<String, dynamic>?)!,
      cover: Photo.fromJson(json['cover'] as Map<String, dynamic>?),
      startTimestamp: json['start_timestamp'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video.toJson(),
        'cover': cover?.toJson(),
        'start_timestamp': startTimestamp,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PaidMediaVideo &&
          const DeepCollectionEquality().equals(other.video, video) &&
          const DeepCollectionEquality().equals(other.cover, cover) &&
          const DeepCollectionEquality()
              .equals(other.startTimestamp, startTimestamp));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(video),
        const DeepCollectionEquality().hash(cover),
        const DeepCollectionEquality().hash(startTimestamp)
      ]);
}
