// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An audio
@immutable
class PollMediaAudio extends PollMedia {
  const PollMediaAudio({
    required this.audio,
  });

  /// [audio] The audio
  final Audio audio;

  static const String constructor = 'pollMediaAudio';

  static PollMediaAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollMediaAudio(
      audio: Audio.fromJson(json['audio'] as Map<String, dynamic>?)!,
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
          other is PollMediaAudio &&
          const DeepCollectionEquality().equals(other.audio, audio));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(audio)]);
}
