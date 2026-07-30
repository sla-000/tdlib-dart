// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends a message. Returns the sent message
/// Returns [Message]
@immutable
class SendMessage extends TdFunction {
  const SendMessage({
    required this.chatId,
    this.topicId,
    this.replyTo,
    this.options,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [chatId] Target chat
  final int chatId;

  /// [topicId] Topic in which the message will be sent; pass null if none
  final MessageTopic? topicId;

  /// [replyTo] Information about the message or story to be replied; pass null
  /// if none
  final InputMessageReplyTo? replyTo;

  /// [options] Options to be used to send the message; pass null to use default
  /// options
  final MessageSendOptions? options;

  /// [replyMarkup] Markup for replying to the message; pass null if none; for
  /// bots only
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent
  final InputMessageContent inputMessageContent;

  static const String constructor = 'sendMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId?.toJson(),
        'reply_to': replyTo?.toJson(),
        'options': options?.toJson(),
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality().equals(other.replyTo, replyTo) &&
          const DeepCollectionEquality().equals(other.options, options) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup) &&
          const DeepCollectionEquality()
              .equals(other.inputMessageContent, inputMessageContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(replyTo),
        const DeepCollectionEquality().hash(options),
        const DeepCollectionEquality().hash(replyMarkup),
        const DeepCollectionEquality().hash(inputMessageContent)
      ]);
}
