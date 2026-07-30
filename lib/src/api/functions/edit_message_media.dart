// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Edits the media content of a message, including message caption. If only
/// the caption needs to be edited, use editMessageCaption instead. The type
/// of message content in an album can't be changed with exception of
/// replacing a photo with a video or vice versa. Returns the edited message
/// after the edit is completed on the server side
/// Returns [Message]
@immutable
class EditMessageMedia extends TdFunction {
  const EditMessageMedia({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message. Use
  /// messageProperties.can_edit_media to check whether the message can be
  /// edited
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots
  /// only
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New content of the message. Must be one of the
  /// following types: inputMessageAnimation, inputMessageAudio,
  /// inputMessageDocument, inputMessagePhoto or inputMessageVideo
  final InputMessageContent inputMessageContent;

  static const String constructor = 'editMessageMedia';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditMessageMedia &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkup, replyMarkup) &&
          const DeepCollectionEquality()
              .equals(other.inputMessageContent, inputMessageContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(replyMarkup),
        const DeepCollectionEquality().hash(inputMessageContent)
      ]);
}
