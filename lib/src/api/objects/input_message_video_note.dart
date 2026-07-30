// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A video note message
@immutable
class InputMessageVideoNote extends InputMessageContent {
  const InputMessageVideoNote({
    required this.videoNote,
    this.selfDestructType,
  });

  /// [videoNote] Video note to be sent
  final InputVideoNote videoNote;

  /// [selfDestructType] Video note self-destruct type; may be null if none;
  /// pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  static const String constructor = 'inputMessageVideoNote';

  static InputMessageVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVideoNote(
      videoNote:
          InputVideoNote.fromJson(json['video_note'] as Map<String, dynamic>?)!,
      selfDestructType: MessageSelfDestructType.fromJson(
          json['self_destruct_type'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video_note': videoNote.toJson(),
        'self_destruct_type': selfDestructType?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputMessageVideoNote &&
          const DeepCollectionEquality().equals(other.videoNote, videoNote) &&
          const DeepCollectionEquality()
              .equals(other.selfDestructType, selfDestructType));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(videoNote),
        const DeepCollectionEquality().hash(selfDestructType)
      ]);
}
