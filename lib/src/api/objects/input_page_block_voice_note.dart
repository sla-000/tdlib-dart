// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A voice note
@immutable
class InputPageBlockVoiceNote extends InputPageBlock {
  const InputPageBlockVoiceNote({
    required this.voiceNote,
    this.caption,
  });

  /// [voiceNote] The voice note to be sent
  final InputVoiceNote voiceNote;

  /// [caption] Voice note caption; pass null if none
  final PageBlockCaption? caption;

  static const String constructor = 'inputPageBlockVoiceNote';

  static InputPageBlockVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockVoiceNote(
      voiceNote:
          InputVoiceNote.fromJson(json['voice_note'] as Map<String, dynamic>?)!,
      caption:
          PageBlockCaption.fromJson(json['caption'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'voice_note': voiceNote.toJson(),
        'caption': caption?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPageBlockVoiceNote &&
          const DeepCollectionEquality().equals(other.voiceNote, voiceNote) &&
          const DeepCollectionEquality().equals(other.caption, caption));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(voiceNote),
        const DeepCollectionEquality().hash(caption)
      ]);
}
