// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends an ephemeral message which will be received only by one bot in a
/// chat. Currently, only ephemeral bot commands and replies to bot ephemeral
/// messages can be sent using the method. The message is persistent across
/// application restarts only if the message database is used. Returns the
/// sent message
/// Returns [Message]
@immutable
class SendEphemeralMessage extends TdFunction {
  const SendEphemeralMessage({
    required this.chatId,
    this.topicId,
    required this.receiverUserId,
    this.callbackQueryId,
    this.replaceCallbackQueryMessage,
    this.replyTo,
    this.protectContent,
    required this.sendingId,
    required this.onlyPreview,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [chatId] Target chat
  final int chatId;

  /// [topicId] Topic in which the message will be sent; pass null if none
  final MessageTopic? topicId;

  /// [receiverUserId] Identifier of the user who will receive the message
  final int receiverUserId;

  /// [callbackQueryId] Identifier of the callback query which triggered the
  /// message; for bots only
  final int? callbackQueryId;

  /// [replaceCallbackQueryMessage] Pass true if the ephemeral message must
  /// replace the message from which the callback query originated; for bots
  /// only
  final bool? replaceCallbackQueryMessage;

  /// [replyTo] Information about the message to be replied; pass null if none.
  /// The message can be an incoming ephemeral message
  final InputMessageReplyTo? replyTo;

  /// [protectContent] Pass true if the content of the message must be protected
  /// from forwarding and saving; for bots only
  final bool? protectContent;

  /// [sendingId] Non-persistent identifier, which will be returned back in
  /// messageSendingStatePending object and can be used to match sent messages
  /// and corresponding updateNewMessage updates
  final int sendingId;

  /// [onlyPreview] Pass true to get a fake message instead of actually sending
  /// them
  final bool onlyPreview;

  /// [replyMarkup] Markup for replying to the message; pass null if none; for
  /// bots only
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageAnimation,
  /// inputMessageAudio, inputMessageDocument, inputMessagePhoto,
  /// inputMessageRichMessage, inputMessageSticker, inputMessageVideo,
  /// inputMessageVideoNote, inputMessageVoiceNote, inputMessageLocation,
  /// inputMessageVenue, inputMessageContact
  final InputMessageContent inputMessageContent;

  static const String constructor = 'sendEphemeralMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId?.toJson(),
        'receiver_user_id': receiverUserId,
        'callback_query_id': callbackQueryId.toString(),
        'replace_callback_query_message': replaceCallbackQueryMessage,
        'reply_to': replyTo?.toJson(),
        'protect_content': protectContent,
        'sending_id': sendingId,
        'only_preview': onlyPreview,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendEphemeralMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality()
              .equals(other.receiverUserId, receiverUserId) &&
          const DeepCollectionEquality()
              .equals(other.callbackQueryId, callbackQueryId) &&
          const DeepCollectionEquality().equals(
              other.replaceCallbackQueryMessage, replaceCallbackQueryMessage) &&
          const DeepCollectionEquality().equals(other.replyTo, replyTo) &&
          const DeepCollectionEquality()
              .equals(other.protectContent, protectContent) &&
          const DeepCollectionEquality().equals(other.sendingId, sendingId) &&
          const DeepCollectionEquality()
              .equals(other.onlyPreview, onlyPreview) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup) &&
          const DeepCollectionEquality()
              .equals(other.inputMessageContent, inputMessageContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(receiverUserId),
        const DeepCollectionEquality().hash(callbackQueryId),
        const DeepCollectionEquality().hash(replaceCallbackQueryMessage),
        const DeepCollectionEquality().hash(replyTo),
        const DeepCollectionEquality().hash(protectContent),
        const DeepCollectionEquality().hash(sendingId),
        const DeepCollectionEquality().hash(onlyPreview),
        const DeepCollectionEquality().hash(replyMarkup),
        const DeepCollectionEquality().hash(inputMessageContent)
      ]);
}
