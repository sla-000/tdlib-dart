// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Informs TDLib that an audio was listened by the user
/// Returns [Ok]
@immutable
class ListenToAudio extends TdFunction {
  const ListenToAudio({
    required this.audioFileId,
    required this.duration,
  });

  /// [audioFileId] Identifier of the file with an audio
  final int audioFileId;

  /// [duration] Duration of the listening to the audio, in seconds
  final int duration;

  static const String constructor = 'listenToAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'audio_file_id': audioFileId,
        'duration': duration,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ListenToAudio &&
          const DeepCollectionEquality()
              .equals(other.audioFileId, audioFileId) &&
          const DeepCollectionEquality().equals(other.duration, duration));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(audioFileId),
        const DeepCollectionEquality().hash(duration)
      ]);
}
