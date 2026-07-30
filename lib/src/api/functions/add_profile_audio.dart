// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds an audio file to the beginning of the profile audio files of the
/// current user
/// Returns [Ok]
@immutable
class AddProfileAudio extends TdFunction {
  const AddProfileAudio({
    required this.audio,
    required this.duration,
    required this.title,
    required this.performer,
  });

  /// [audio] The audio file to be added
  final InputFile audio;

  /// [duration] Duration of the audio, in seconds; may be replaced by the
  /// server; ignored for already uploaded files
  final int duration;

  /// [title] Title of the audio; 0-64 characters; may be replaced by the
  /// server; ignored for already uploaded files
  final String title;

  /// [performer] Performer of the audio; 0-64 characters, may be replaced by
  /// the server; ignored for already uploaded files
  final String performer;

  static const String constructor = 'addProfileAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'audio': audio.toJson(),
        'duration': duration,
        'title': title,
        'performer': performer,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddProfileAudio &&
          const DeepCollectionEquality().equals(other.audio, audio) &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.performer, performer));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(audio),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(performer)
      ]);
}
