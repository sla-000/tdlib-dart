// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An audio
@immutable
class InputPollMediaAudio extends InputPollMedia {
  const InputPollMediaAudio({
    required this.audio,
  });

  /// [audio] The audio to be sent
  final InputAudio audio;

  static const String constructor = 'inputPollMediaAudio';

  static InputPollMediaAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaAudio(
      audio: InputAudio.fromJson(json['audio'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'audio': audio.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPollMediaAudio &&
          const DeepCollectionEquality().equals(other.audio, audio));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(audio)]);
}
