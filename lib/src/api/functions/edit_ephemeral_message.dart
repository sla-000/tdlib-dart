// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Edits the text, caption or reply markup of an ephemeral message sent by
/// the bot; for bots only
/// Returns [Ok]
@immutable
class EditEphemeralMessage extends TdFunction {
  const EditEphemeralMessage({
    required this.chatId,
    required this.receiverUserId,
    required this.ephemeralMessageId,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [receiverUserId] Identifier of the user who received the message
  final int receiverUserId;

  /// [ephemeralMessageId] Identifier of the ephemeral message
  final int ephemeralMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New content of the message; pass null to edit only
  /// reply markup. Must be one of the following types: inputMessageText,
  /// inputMessageAnimation, inputMessageAudio, inputMessageDocument,
  /// inputMessagePhoto, inputMessageSticker, inputMessageVideo,
  /// inputMessageVideoNote, inputMessageVoiceNote
  final InputMessageContent? inputMessageContent;

  static const String constructor = 'editEphemeralMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'receiver_user_id': receiverUserId,
        'ephemeral_message_id': ephemeralMessageId,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditEphemeralMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.receiverUserId, receiverUserId) &&
          const DeepCollectionEquality()
              .equals(other.ephemeralMessageId, ephemeralMessageId) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup) &&
          const DeepCollectionEquality()
              .equals(other.inputMessageContent, inputMessageContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(receiverUserId),
        const DeepCollectionEquality().hash(ephemeralMessageId),
        const DeepCollectionEquality().hash(replyMarkup),
        const DeepCollectionEquality().hash(inputMessageContent)
      ]);
}
