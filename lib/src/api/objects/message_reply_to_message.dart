// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a message replied by a given message
@immutable
class MessageReplyToMessage extends MessageReplyTo {
  const MessageReplyToMessage({
    required this.chatId,
    required this.messageId,
    this.quote,
    required this.checklistTaskId,
    required this.pollOptionId,
    this.origin,
    required this.originSendDate,
    this.content,
  });

  /// [chatId] The identifier of the chat to which the message belongs; may be 0
  /// if the replied message is in unknown chat
  final int chatId;

  /// [messageId] The identifier of the message; may be 0 if the replied message
  /// is in unknown chat
  final int messageId;

  /// [quote] Chosen quote from the replied message; may be null if none
  final TextQuote? quote;

  /// [checklistTaskId] Identifier of the checklist task in the original message
  /// that was replied; 0 if none
  final int checklistTaskId;

  /// [pollOptionId] Identifier of the poll option in the original message that
  /// was replied; empty if none
  final String pollOptionId;

  /// [origin] Information about origin of the message if the message was from
  /// another chat or topic; may be null for messages from the same chat
  final MessageOrigin? origin;

  /// [originSendDate] Point in time (Unix timestamp) when the message was sent
  /// if the message was from another chat or topic; 0 for messages from the
  /// same chat
  final int originSendDate;

  /// [content] Media content of the message if the message was from another
  /// chat or topic; may be null for messages from the same chat and messages
  /// without media. Can be only one of the following types: messageAnimation,
  /// messageAudio, messageChecklist, messageContact, messageDice,
  /// messageDocument, messageGame, messageGiveaway, messageGiveawayWinners,
  /// messageInvoice, messageLocation, messagePaidMedia, messagePhoto,
  /// messagePoll, messageStakeDice, messageSticker, messageStory, messageText
  /// (for link preview), messageVenue, messageVideo, messageVideoNote, or
  /// messageVoiceNote
  final MessageContent? content;

  static const String constructor = 'messageReplyToMessage';

  static MessageReplyToMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageReplyToMessage(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      quote: TextQuote.fromJson(json['quote'] as Map<String, dynamic>?),
      checklistTaskId: (json['checklist_task_id'] as int?) ?? 0,
      pollOptionId: (json['poll_option_id'] as String?) ?? '',
      origin: MessageOrigin.fromJson(json['origin'] as Map<String, dynamic>?),
      originSendDate: (json['origin_send_date'] as int?) ?? 0,
      content:
          MessageContent.fromJson(json['content'] as Map<String, dynamic>?),
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
        'origin': origin?.toJson(),
        'origin_send_date': originSendDate,
        'content': content?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageReplyToMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.quote, quote) &&
          const DeepCollectionEquality()
              .equals(other.checklistTaskId, checklistTaskId) &&
          const DeepCollectionEquality()
              .equals(other.pollOptionId, pollOptionId) &&
          const DeepCollectionEquality().equals(other.origin, origin) &&
          const DeepCollectionEquality()
              .equals(other.originSendDate, originSendDate) &&
          const DeepCollectionEquality().equals(other.content, content));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(quote),
        const DeepCollectionEquality().hash(checklistTaskId),
        const DeepCollectionEquality().hash(pollOptionId),
        const DeepCollectionEquality().hash(origin),
        const DeepCollectionEquality().hash(originSendDate),
        const DeepCollectionEquality().hash(content)
      ]);
}
