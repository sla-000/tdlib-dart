// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends a message on behalf of a business account; for bots only. Returns
/// the message after it was sent
/// Returns [BusinessMessage]
@immutable
class SendBusinessMessage extends TdFunction {
  const SendBusinessMessage({
    required this.businessConnectionId,
    required this.chatId,
    this.replyTo,
    required this.disableNotification,
    required this.protectContent,
    required this.effectId,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which to send the request
  final String businessConnectionId;

  /// [chatId] Target chat
  final int chatId;

  /// [replyTo] Information about the message to be replied; pass null if none
  final InputMessageReplyTo? replyTo;

  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [protectContent] Pass true if the content of the message must be protected
  /// from forwarding and saving
  final bool protectContent;

  /// [effectId] Identifier of the effect to apply to the message
  final int effectId;

  /// [replyMarkup] Markup for replying to the message; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent
  final InputMessageContent inputMessageContent;

  static const String constructor = 'sendBusinessMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'chat_id': chatId,
        'reply_to': replyTo?.toJson(),
        'disable_notification': disableNotification,
        'protect_content': protectContent,
        'effect_id': effectId,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendBusinessMessage &&
          const DeepCollectionEquality()
              .equals(other.businessConnectionId, businessConnectionId) &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.replyTo, replyTo) &&
          const DeepCollectionEquality()
              .equals(other.disableNotification, disableNotification) &&
          const DeepCollectionEquality()
              .equals(other.protectContent, protectContent) &&
          const DeepCollectionEquality().equals(other.effectId, effectId) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup) &&
          const DeepCollectionEquality()
              .equals(other.inputMessageContent, inputMessageContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(businessConnectionId),
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(replyTo),
        const DeepCollectionEquality().hash(disableNotification),
        const DeepCollectionEquality().hash(protectContent),
        const DeepCollectionEquality().hash(effectId),
        const DeepCollectionEquality().hash(replyMarkup),
        const DeepCollectionEquality().hash(inputMessageContent)
      ]);
}
