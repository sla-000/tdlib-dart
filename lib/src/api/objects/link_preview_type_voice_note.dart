// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a voice note message
@immutable
class LinkPreviewTypeVoiceNote extends LinkPreviewType {
  const LinkPreviewTypeVoiceNote({
    required this.voiceNote,
  });

  /// [voiceNote] The voice note
  final VoiceNote voiceNote;

  static const String constructor = 'linkPreviewTypeVoiceNote';

  static LinkPreviewTypeVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeVoiceNote(
      voiceNote:
          VoiceNote.fromJson(json['voice_note'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'voice_note': voiceNote.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LinkPreviewTypeVoiceNote &&
          const DeepCollectionEquality().equals(other.voiceNote, voiceNote));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(voiceNote)]);
}
