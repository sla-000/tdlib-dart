import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a task in a checklist
@immutable
class ChecklistTask extends TdObject {
  const ChecklistTask({
    required this.id,
    required this.text,
    this.completedBy,
    required this.completionDate,
  });

  /// [id] Unique identifier of the task
  final int id;

  /// [text] Text of the task; may contain only Bold, Italic, Underline,
  /// Strikethrough, Spoiler, CustomEmoji, DateTime and automatically found
  /// entities
  final FormattedText text;

  /// [completedBy] Identifier of the user or chat that completed the task; may
  /// be null if the task isn't completed yet
  final MessageSender? completedBy;

  /// [completionDate] Point in time (Unix timestamp) when the task was
  /// completed; 0 if the task isn't completed
  final int completionDate;

  static const String constructor = 'checklistTask';

  static ChecklistTask? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChecklistTask(
      id: json['id'] as int,
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      completedBy:
          MessageSender.fromJson(json['completed_by'] as Map<String, dynamic>?),
      completionDate: json['completion_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'text': text.toJson(),
        'completed_by': completedBy?.toJson(),
        'completion_date': completionDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
