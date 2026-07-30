import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      filePath: json['file_path'] as String,
      duration: json['duration'] as int,
      waveform: json['waveform'] as String,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
