import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
