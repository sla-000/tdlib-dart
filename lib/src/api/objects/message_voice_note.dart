// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A voice note message
@immutable
class MessageVoiceNote extends MessageContent {
  const MessageVoiceNote({
    required this.voiceNote,
    required this.caption,
    required this.isListened,
  });

  /// [voiceNote] The voice note description
  final VoiceNote voiceNote;

  /// [caption] Voice note caption
  final FormattedText caption;

  /// [isListened] True, if at least one of the recipients has listened to the
  /// voice note
  final bool isListened;

  static const String constructor = 'messageVoiceNote';

  static MessageVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVoiceNote(
      voiceNote:
          VoiceNote.fromJson(json['voice_note'] as Map<String, dynamic>?)!,
      caption:
          FormattedText.fromJson(json['caption'] as Map<String, dynamic>?)!,
      isListened: (json['is_listened'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'voice_note': voiceNote.toJson(),
        'caption': caption.toJson(),
        'is_listened': isListened,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageVoiceNote &&
          const DeepCollectionEquality().equals(other.voiceNote, voiceNote) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality().equals(other.isListened, isListened));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(voiceNote),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(isListened)
      ]);
}
