// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Informs TDLib that a Web App is being opened from the attachment menu, a
/// botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an
/// inlineKeyboardButtonTypeWebApp button. For each bot, a confirmation alert
/// about data sent to the bot must be shown once
/// Returns [WebAppInfo]
@immutable
class OpenWebApp extends TdFunction {
  const OpenWebApp({
    required this.chatId,
    required this.botUserId,
    required this.url,
    this.topicId,
    this.replyTo,
    required this.parameters,
  });

  /// [chatId] Identifier of the chat in which the Web App is opened. The Web
  /// App can't be opened in secret chats
  final int chatId;

  /// [botUserId] Identifier of the bot, providing the Web App. If the bot is
  /// restricted for the current user, then show an error instead of calling the
  /// method
  final int botUserId;

  /// [url] The URL from an inlineKeyboardButtonTypeWebApp button, a
  /// botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an
  /// empty string otherwise
  final String url;

  /// [topicId] Topic in which the message will be sent; pass null if none
  final MessageTopic? topicId;

  /// [replyTo] Information about the message or story to be replied in the
  /// message sent by the Web App; pass null if none
  final InputMessageReplyTo? replyTo;

  /// [parameters] Parameters to use to open the Web App
  final WebAppOpenParameters parameters;

  static const String constructor = 'openWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'bot_user_id': botUserId,
        'url': url,
        'topic_id': topicId?.toJson(),
        'reply_to': replyTo?.toJson(),
        'parameters': parameters.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is OpenWebApp &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality().equals(other.replyTo, replyTo) &&
          const DeepCollectionEquality().equals(other.parameters, parameters));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(replyTo),
        const DeepCollectionEquality().hash(parameters)
      ]);
}
