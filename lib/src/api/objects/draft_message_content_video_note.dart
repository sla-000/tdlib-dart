import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video note message draft
@immutable
class DraftMessageContentVideoNote extends DraftMessageContent {
  const DraftMessageContentVideoNote({
    required this.filePath,
    required this.duration,
    required this.length,
    this.selfDestructType,
  });

  /// [filePath] Path to the file with the video note
  final String filePath;

  /// [duration] Duration of the video, in seconds; 0-60
  final int duration;

  /// [length] Video width and height; must be positive and not greater than 640
  final int length;

  /// [selfDestructType] Video note self-destruct type; may be null if none;
  /// pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  static const String constructor = 'draftMessageContentVideoNote';

  static DraftMessageContentVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DraftMessageContentVideoNote(
      filePath: json['file_path'] as String,
      duration: json['duration'] as int,
      length: json['length'] as int,
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
        'length': length,
        'self_destruct_type': selfDestructType?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
