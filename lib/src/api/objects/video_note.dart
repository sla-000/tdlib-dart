// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a video note. The video must be equal in width and height,
/// cropped to a circle, and stored in MPEG4 format
@immutable
class VideoNote extends TdObject {
  const VideoNote({
    required this.duration,
    required this.waveform,
    required this.length,
    this.minithumbnail,
    this.thumbnail,
    this.speechRecognitionResult,
    required this.video,
  });

  /// [duration] Duration of the video, in seconds; as defined by the sender
  final int duration;

  /// [waveform] A waveform representation of the video note's audio in 5-bit
  /// format; may be empty if unknown
  final String waveform;

  /// [length] Video width and height; as defined by the sender
  final int length;

  /// [minithumbnail] Video minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Video thumbnail in JPEG format; as defined by the sender; may
  /// be null
  final Thumbnail? thumbnail;

  /// [speechRecognitionResult] Result of speech recognition in the video note;
  /// may be null
  final SpeechRecognitionResult? speechRecognitionResult;

  /// [video] File containing the video
  final File video;

  static const String constructor = 'videoNote';

  static VideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VideoNote(
      duration: json['duration'] as int,
      waveform: json['waveform'] as String,
      length: json['length'] as int,
      minithumbnail: Minithumbnail.fromJson(
          json['minithumbnail'] as Map<String, dynamic>?),
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      speechRecognitionResult: SpeechRecognitionResult.fromJson(
          json['speech_recognition_result'] as Map<String, dynamic>?),
      video: File.fromJson(json['video'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'duration': duration,
        'waveform': waveform,
        'length': length,
        'minithumbnail': minithumbnail?.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'speech_recognition_result': speechRecognitionResult?.toJson(),
        'video': video.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is VideoNote &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality().equals(other.waveform, waveform) &&
          const DeepCollectionEquality().equals(other.length, length) &&
          const DeepCollectionEquality()
              .equals(other.minithumbnail, minithumbnail) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality()
              .equals(other.speechRecognitionResult, speechRecognitionResult) &&
          const DeepCollectionEquality().equals(other.video, video));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(waveform),
        const DeepCollectionEquality().hash(length),
        const DeepCollectionEquality().hash(minithumbnail),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(speechRecognitionResult),
        const DeepCollectionEquality().hash(video)
      ]);
}
