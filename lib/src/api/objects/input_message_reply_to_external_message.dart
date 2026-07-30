// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a message to be replied that is from a different chat or a forum
/// topic; not supported in secret chats
@immutable
class InputMessageReplyToExternalMessage extends InputMessageReplyTo {
  const InputMessageReplyToExternalMessage({
    required this.chatId,
    required this.messageId,
    this.quote,
    required this.checklistTaskId,
    required this.pollOptionId,
  });

  /// [chatId] The identifier of the chat to which the message to be replied
  /// belongs
  final int chatId;

  /// [messageId] The identifier of the message to be replied in the specified
  /// chat. A message can be replied in another chat or forum topic only if
  /// messageProperties.can_be_replied_in_another_chat
  final int messageId;

  /// [quote] Quote from the message to be replied; pass null if none
  final InputTextQuote? quote;

  /// [checklistTaskId] Identifier of the checklist task in the message to be
  /// replied; pass 0 to reply to the whole message
  final int checklistTaskId;

  /// [pollOptionId] Identifier of the poll option in the message to be replied;
  /// pass an empty string if none
  final String pollOptionId;

  static const String constructor = 'inputMessageReplyToExternalMessage';

  static InputMessageReplyToExternalMessage? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageReplyToExternalMessage(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      quote: InputTextQuote.fromJson(json['quote'] as Map<String, dynamic>?),
      checklistTaskId: (json['checklist_task_id'] as int?) ?? 0,
      pollOptionId: (json['poll_option_id'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'quote': quote?.toJson(),
        'checklist_task_id': checklistTaskId,
        'poll_option_id': pollOptionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputMessageReplyToExternalMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.quote, quote) &&
          const DeepCollectionEquality()
              .equals(other.checklistTaskId, checklistTaskId) &&
          const DeepCollectionEquality()
              .equals(other.pollOptionId, pollOptionId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(quote),
        const DeepCollectionEquality().hash(checklistTaskId),
        const DeepCollectionEquality().hash(pollOptionId)
      ]);
}
