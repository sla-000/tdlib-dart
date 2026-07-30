// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds tasks to a checklist in a message
/// Returns [Ok]
@immutable
class AddChecklistTasks extends TdFunction {
  const AddChecklistTasks({
    required this.chatId,
    required this.messageId,
    required this.tasks,
  });

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the message containing the checklist. Use
  /// messageProperties.can_add_tasks to check whether the tasks can be added
  final int messageId;

  /// [tasks] List of added tasks
  final List<InputChecklistTask> tasks;

  static const String constructor = 'addChecklistTasks';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'tasks': tasks.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddChecklistTasks &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.tasks, tasks));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(tasks)
      ]);
}
