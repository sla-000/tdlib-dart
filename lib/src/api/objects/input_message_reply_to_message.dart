// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a message to be replied in the same chat and forum topic
@immutable
class InputMessageReplyToMessage extends InputMessageReplyTo {
  const InputMessageReplyToMessage({
    required this.messageId,
    this.quote,
    required this.checklistTaskId,
    required this.pollOptionId,
  });

  /// [messageId] The identifier of the message to be replied in the same chat
  /// and forum topic. A message can be replied in the same chat and forum topic
  /// only if messageProperties.can_be_replied
  final int messageId;

  /// [quote] Quote from the message to be replied; pass null if none. Must
  /// always be null for replies in secret chats
  final InputTextQuote? quote;

  /// [checklistTaskId] Identifier of the checklist task in the message to be
  /// replied; pass 0 to reply to the whole message
  final int checklistTaskId;

  /// [pollOptionId] Identifier of the poll option in the message to be replied;
  /// pass an empty string if none
  final String pollOptionId;

  static const String constructor = 'inputMessageReplyToMessage';

  static InputMessageReplyToMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageReplyToMessage(
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
          other is InputMessageReplyToMessage &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.quote, quote) &&
          const DeepCollectionEquality()
              .equals(other.checklistTaskId, checklistTaskId) &&
          const DeepCollectionEquality()
              .equals(other.pollOptionId, pollOptionId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(quote),
        const DeepCollectionEquality().hash(checklistTaskId),
        const DeepCollectionEquality().hash(pollOptionId)
      ]);
}
