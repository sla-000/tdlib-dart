// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Some tasks were added to a checklist
@immutable
class MessageChecklistTasksAdded extends MessageContent {
  const MessageChecklistTasksAdded({
    required this.checklistMessageId,
    required this.tasks,
  });

  /// [checklistMessageId] Identifier of the message with the checklist; may be
  /// 0 or an identifier of a deleted message
  final int checklistMessageId;

  /// [tasks] List of tasks added to the checklist
  final List<ChecklistTask> tasks;

  static const String constructor = 'messageChecklistTasksAdded';

  static MessageChecklistTasksAdded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChecklistTasksAdded(
      checklistMessageId: json['checklist_message_id'] as int,
      tasks: List<ChecklistTask>.from(
          ((json['tasks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChecklistTask.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'checklist_message_id': checklistMessageId,
        'tasks': tasks.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageChecklistTasksAdded &&
          const DeepCollectionEquality()
              .equals(other.checklistMessageId, checklistMessageId) &&
          const DeepCollectionEquality().equals(other.tasks, tasks));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(checklistMessageId),
        const DeepCollectionEquality().hash(tasks)
      ]);
}
