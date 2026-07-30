// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A video note to be sent
@immutable
class InputVoiceNote extends TdObject {
  const InputVoiceNote({
    required this.voiceNote,
    required this.duration,
    required this.waveform,
  });

  /// [voiceNote] Voice note file to be sent. The voice note must be encoded
  /// with the Opus codec and stored inside an OGG container with a single audio
  /// channel, or be in MP3 or M4A format as regular audio
  final InputFile voiceNote;

  /// [duration] Duration of the voice note, in seconds
  final int duration;

  /// [waveform] Waveform representation of the voice note in 5-bit format
  final String waveform;

  static const String constructor = 'inputVoiceNote';

  static InputVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputVoiceNote(
      voiceNote:
          InputFile.fromJson(json['voice_note'] as Map<String, dynamic>?)!,
      duration: json['duration'] as int,
      waveform: json['waveform'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'voice_note': voiceNote.toJson(),
        'duration': duration,
        'waveform': waveform,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputVoiceNote &&
          const DeepCollectionEquality().equals(other.voiceNote, voiceNote) &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality().equals(other.waveform, waveform));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(voiceNote),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(waveform)
      ]);
}
