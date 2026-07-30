import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
