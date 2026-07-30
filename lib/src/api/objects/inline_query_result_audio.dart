// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents an audio file
@immutable
class InlineQueryResultAudio extends InlineQueryResult {
  const InlineQueryResultAudio({
    required this.id,
    required this.audio,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [audio] Audio file
  final Audio audio;

  static const String constructor = 'inlineQueryResultAudio';

  static InlineQueryResultAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultAudio(
      id: json['id'] as String,
      audio: Audio.fromJson(json['audio'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'audio': audio.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineQueryResultAudio &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.audio, audio));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(audio)
      ]);
}
