// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
        'query_id': queryId.toString(),
        'result_id': resultId,
        'hide_via_bot': hideViaBot,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendInlineQueryResultMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality().equals(other.replyTo, replyTo) &&
          const DeepCollectionEquality().equals(other.options, options) &&
          const DeepCollectionEquality().equals(other.queryId, queryId) &&
          const DeepCollectionEquality().equals(other.resultId, resultId) &&
          const DeepCollectionEquality().equals(other.hideViaBot, hideViaBot));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(replyTo),
        const DeepCollectionEquality().hash(options),
        const DeepCollectionEquality().hash(queryId),
        const DeepCollectionEquality().hash(resultId),
        const DeepCollectionEquality().hash(hideViaBot)
      ]);
}
