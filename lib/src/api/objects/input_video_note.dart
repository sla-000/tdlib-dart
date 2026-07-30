// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A video note to be sent
@immutable
class InputVideoNote extends TdObject {
  const InputVideoNote({
    required this.videoNote,
    this.thumbnail,
    required this.duration,
    required this.length,
  });

  /// [videoNote] Video note file to be sent. The video is expected to be
  /// encoded to MPEG4 format with H.264 codec and have no data outside of the
  /// visible circle
  final InputFile videoNote;

  /// [thumbnail] Video thumbnail; may be null if empty; pass null to skip
  /// thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [duration] Duration of the video, in seconds; 0-60
  final int duration;

  /// [length] Video width and height; must be positive and not greater than 640
  final int length;

  static const String constructor = 'inputVideoNote';

  static InputVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputVideoNote(
      videoNote:
          InputFile.fromJson(json['video_note'] as Map<String, dynamic>?)!,
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      duration: json['duration'] as int,
      length: json['length'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video_note': videoNote.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'duration': duration,
        'length': length,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputVideoNote &&
          const DeepCollectionEquality().equals(other.videoNote, videoNote) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality().equals(other.length, length));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(videoNote),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(length)
      ]);
}
