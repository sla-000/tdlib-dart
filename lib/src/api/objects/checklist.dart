// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a checklist
@immutable
class Checklist extends TdObject {
  const Checklist({
    required this.title,
    required this.tasks,
    required this.othersCanAddTasks,
    required this.canAddTasks,
    required this.othersCanMarkTasksAsDone,
    required this.canMarkTasksAsDone,
  });

  /// [title] Title of the checklist; may contain only Bold, Italic, Underline,
  /// Strikethrough, Spoiler, CustomEmoji, and DateTime entities
  final FormattedText title;

  /// [tasks] List of tasks in the checklist
  final List<ChecklistTask> tasks;

  /// [othersCanAddTasks] True, if users other than creator of the list can add
  /// tasks to the list
  final bool othersCanAddTasks;

  /// [canAddTasks] True, if the current user can add tasks to the list if they
  /// have Telegram Premium subscription
  final bool canAddTasks;

  /// [othersCanMarkTasksAsDone] True, if users other than creator of the list
  /// can mark tasks as done or not done. If true, then the checklist is called
  /// "group checklist"
  final bool othersCanMarkTasksAsDone;

  /// [canMarkTasksAsDone] True, if the current user can mark tasks as done or
  /// not done if they have Telegram Premium subscription
  final bool canMarkTasksAsDone;

  static const String constructor = 'checklist';

  static Checklist? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Checklist(
      title: FormattedText.fromJson(json['title'] as Map<String, dynamic>?)!,
      tasks: List<ChecklistTask>.from(
          ((json['tasks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChecklistTask.fromJson(item))
              .toList()),
      othersCanAddTasks: json['others_can_add_tasks'] as bool,
      canAddTasks: json['can_add_tasks'] as bool,
      othersCanMarkTasksAsDone: json['others_can_mark_tasks_as_done'] as bool,
      canMarkTasksAsDone: json['can_mark_tasks_as_done'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title.toJson(),
        'tasks': tasks.map((item) => item.toJson()).toList(),
        'others_can_add_tasks': othersCanAddTasks,
        'can_add_tasks': canAddTasks,
        'others_can_mark_tasks_as_done': othersCanMarkTasksAsDone,
        'can_mark_tasks_as_done': canMarkTasksAsDone,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Checklist &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.tasks, tasks) &&
          const DeepCollectionEquality()
              .equals(other.othersCanAddTasks, othersCanAddTasks) &&
          const DeepCollectionEquality()
              .equals(other.canAddTasks, canAddTasks) &&
          const DeepCollectionEquality().equals(
              other.othersCanMarkTasksAsDone, othersCanMarkTasksAsDone) &&
          const DeepCollectionEquality()
              .equals(other.canMarkTasksAsDone, canMarkTasksAsDone));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(tasks),
        const DeepCollectionEquality().hash(othersCanAddTasks),
        const DeepCollectionEquality().hash(canAddTasks),
        const DeepCollectionEquality().hash(othersCanMarkTasksAsDone),
        const DeepCollectionEquality().hash(canMarkTasksAsDone)
      ]);
}
