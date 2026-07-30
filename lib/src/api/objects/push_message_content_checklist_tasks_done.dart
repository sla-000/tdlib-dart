// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Some tasks from a checklist were marked as done or not done
@immutable
class PushMessageContentChecklistTasksDone extends PushMessageContent {
  const PushMessageContentChecklistTasksDone({
    required this.taskCount,
  });

  /// [taskCount] Number of changed tasks
  final int taskCount;

  static const String constructor = 'pushMessageContentChecklistTasksDone';

  static PushMessageContentChecklistTasksDone? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChecklistTasksDone(
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
          other is PushMessageContentChecklistTasksDone &&
          const DeepCollectionEquality().equals(other.taskCount, taskCount));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(taskCount)]);
}
