import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
      quote: InputTextQuote.fromJson(json['quote'] as Map<String, dynamic>?),
      checklistTaskId: json['checklist_task_id'] as int,
      pollOptionId: json['poll_option_id'] as String,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
