// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Some tasks were added to a checklist
@immutable
class PushMessageContentChecklistTasksAdded extends PushMessageContent {
  const PushMessageContentChecklistTasksAdded({
    required this.taskCount,
  });

  /// [taskCount] Number of added tasks
  final int taskCount;

  static const String constructor = 'pushMessageContentChecklistTasksAdded';

  static PushMessageContentChecklistTasksAdded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChecklistTasksAdded(
      taskCount: json['task_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'task_count': taskCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PushMessageContentChecklistTasksAdded &&
          const DeepCollectionEquality().equals(other.taskCount, taskCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(taskCount)]);
}
