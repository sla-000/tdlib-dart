// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Some tasks from a checklist were marked as done or not done
@immutable
class MessageChecklistTasksDone extends MessageContent {
  const MessageChecklistTasksDone({
    required this.checklistMessageId,
    required this.markedAsDoneTaskIds,
    required this.markedAsNotDoneTaskIds,
  });

  /// [checklistMessageId] Identifier of the message with the checklist; may be
  /// 0 or an identifier of a deleted message
  final int checklistMessageId;

  /// [markedAsDoneTaskIds] Identifiers of tasks that were marked as done
  final List<int> markedAsDoneTaskIds;

  /// [markedAsNotDoneTaskIds] Identifiers of tasks that were marked as not done
  final List<int> markedAsNotDoneTaskIds;

  static const String constructor = 'messageChecklistTasksDone';

  static MessageChecklistTasksDone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChecklistTasksDone(
      checklistMessageId: (json['checklist_message_id'] as int?) ?? 0,
      markedAsDoneTaskIds: List<int>.from(
          ((json['marked_as_done_task_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
      markedAsNotDoneTaskIds: List<int>.from(
          ((json['marked_as_not_done_task_ids'] as List<dynamic>?) ??
                  <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'checklist_message_id': checklistMessageId,
        'marked_as_done_task_ids':
            markedAsDoneTaskIds.map((item) => item).toList(),
        'marked_as_not_done_task_ids':
            markedAsNotDoneTaskIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageChecklistTasksDone &&
          const DeepCollectionEquality()
              .equals(other.checklistMessageId, checklistMessageId) &&
          const DeepCollectionEquality()
              .equals(other.markedAsDoneTaskIds, markedAsDoneTaskIds) &&
          const DeepCollectionEquality()
              .equals(other.markedAsNotDoneTaskIds, markedAsNotDoneTaskIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(checklistMessageId),
        const DeepCollectionEquality().hash(markedAsDoneTaskIds),
        const DeepCollectionEquality().hash(markedAsNotDoneTaskIds)
      ]);
}
