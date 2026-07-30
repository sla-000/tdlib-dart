// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A voice note message
@immutable
class InputMessageVoiceNote extends InputMessageContent {
  const InputMessageVoiceNote({
    required this.voiceNote,
    this.caption,
    this.selfDestructType,
  });

  /// [voiceNote] Voice note to be sent
  final InputVoiceNote voiceNote;

  /// [caption] Voice note caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [selfDestructType] Voice note self-destruct type; may be null if none;
  /// pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  static const String constructor = 'inputMessageVoiceNote';

  static InputMessageVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVoiceNote(
      voiceNote:
          InputVoiceNote.fromJson(json['voice_note'] as Map<String, dynamic>?)!,
      caption: FormattedText.fromJson(json['caption'] as Map<String, dynamic>?),
      selfDestructType: MessageSelfDestructType.fromJson(
          json['self_destruct_type'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'voice_note': voiceNote.toJson(),
        'caption': caption?.toJson(),
        'self_destruct_type': selfDestructType?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputMessageVoiceNote &&
          const DeepCollectionEquality().equals(other.voiceNote, voiceNote) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality()
              .equals(other.selfDestructType, selfDestructType));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(voiceNote),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(selfDestructType)
      ]);
}
