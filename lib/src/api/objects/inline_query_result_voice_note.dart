// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a voice note
@immutable
class InlineQueryResultVoiceNote extends InlineQueryResult {
  const InlineQueryResultVoiceNote({
    required this.id,
    required this.voiceNote,
    required this.title,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [voiceNote] Voice note
  final VoiceNote voiceNote;

  /// [title] Title of the voice note
  final String title;

  static const String constructor = 'inlineQueryResultVoiceNote';

  static InlineQueryResultVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultVoiceNote(
      id: (json['id'] as String?) ?? '',
      voiceNote:
          VoiceNote.fromJson(json['voice_note'] as Map<String, dynamic>?)!,
      title: (json['title'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'voice_note': voiceNote.toJson(),
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineQueryResultVoiceNote &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.voiceNote, voiceNote) &&
          const DeepCollectionEquality().equals(other.title, title));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(voiceNote),
        const DeepCollectionEquality().hash(title)
      ]);
}
