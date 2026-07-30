// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Edits the message content of a checklist. Returns the edited message after
/// the edit is completed on the server side
/// Returns [Message]
@immutable
class EditMessageChecklist extends TdFunction {
  const EditMessageChecklist({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    required this.checklist,
  });

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message. Use messageProperties.can_be_edited
  /// to check whether the message can be edited
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots
  /// only
  final ReplyMarkup? replyMarkup;

  /// [checklist] The new checklist. If some tasks were completed, this
  /// information will be kept
  final InputChecklist checklist;

  static const String constructor = 'editMessageChecklist';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'reply_markup': replyMarkup?.toJson(),
        'checklist': checklist.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditMessageChecklist &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup) &&
          const DeepCollectionEquality().equals(other.checklist, checklist));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(replyMarkup),
        const DeepCollectionEquality().hash(checklist)
      ]);
}
