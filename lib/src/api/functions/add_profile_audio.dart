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
  });

  /// [audio] The audio to add
  final InputAudio audio;

  static const String constructor = 'addProfileAudio';

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
          other is AddProfileAudio &&
          const DeepCollectionEquality().equals(other.audio, audio));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(audio)]);
}
