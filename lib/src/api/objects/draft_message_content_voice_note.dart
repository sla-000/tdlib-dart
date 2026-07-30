// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A voice note message draft
@immutable
class DraftMessageContentVoiceNote extends DraftMessageContent {
  const DraftMessageContentVoiceNote({
    required this.filePath,
    required this.duration,
    required this.waveform,
    this.selfDestructType,
  });

  /// [filePath] Path to the file with the voice note
  final String filePath;

  /// [duration] Duration of the voice note, in seconds
  final int duration;

  /// [waveform] Waveform representation of the voice note in 5-bit format
  final String waveform;

  /// [selfDestructType] Voice note self-destruct type; may be null if none;
  /// pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  static const String constructor = 'draftMessageContentVoiceNote';

  static DraftMessageContentVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DraftMessageContentVoiceNote(
      filePath: (json['file_path'] as String?) ?? '',
      duration: (json['duration'] as int?) ?? 0,
      waveform: (json['waveform'] as String?) ?? '',
      selfDestructType: MessageSelfDestructType.fromJson(
          json['self_destruct_type'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_path': filePath,
        'duration': duration,
        'waveform': waveform,
        'self_destruct_type': selfDestructType?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DraftMessageContentVoiceNote &&
          const DeepCollectionEquality().equals(other.filePath, filePath) &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality().equals(other.waveform, waveform) &&
          const DeepCollectionEquality()
              .equals(other.selfDestructType, selfDestructType));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(filePath),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(waveform),
        const DeepCollectionEquality().hash(selfDestructType)
      ]);
}
