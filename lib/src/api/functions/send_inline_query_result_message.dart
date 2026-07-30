import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends the result of an inline query as a message. Returns the sent
/// message. Always clears a chat draft message
/// Returns [Message]
@immutable
class SendInlineQueryResultMessage extends TdFunction {
  const SendInlineQueryResultMessage({
    required this.chatId,
    this.topicId,
    this.replyTo,
    this.options,
    required this.queryId,
    required this.resultId,
    required this.hideViaBot,
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

  /// [queryId] Identifier of the inline query
  final int queryId;

  /// [resultId] Identifier of the inline query result
  final String resultId;

  /// [hideViaBot] Pass true to hide the bot, via which the message is sent. Can
  /// be used only for bots getOption("animation_search_bot_username"),
  /// getOption("photo_search_bot_username"), and
  /// getOption("venue_search_bot_username")
  final bool hideViaBot;

  static const String constructor = 'sendInlineQueryResultMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId?.toJson(),
        'reply_to': replyTo?.toJson(),
        'options': options?.toJson(),
        'query_id': queryId,
        'result_id': resultId,
        'hide_via_bot': hideViaBot,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
