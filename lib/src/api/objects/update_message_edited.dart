// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message was edited. Changes in the message content will come in a
/// separate updateMessageContent
@immutable
class UpdateMessageEdited extends Update {
  const UpdateMessageEdited({
    required this.chatId,
    required this.messageId,
    required this.editDate,
    this.replyMarkup,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [editDate] Point in time (Unix timestamp) when the message was edited
  final int editDate;

  /// [replyMarkup] New message reply markup; may be null
  final ReplyMarkup? replyMarkup;

  static const String constructor = 'updateMessageEdited';

  static UpdateMessageEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageEdited(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      editDate: (json['edit_date'] as int?) ?? 0,
      replyMarkup:
          ReplyMarkup.fromJson(json['reply_markup'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'edit_date': editDate,
        'reply_markup': replyMarkup?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateMessageEdited &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.editDate, editDate) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(editDate),
        const DeepCollectionEquality().hash(replyMarkup)
      ]);
}
