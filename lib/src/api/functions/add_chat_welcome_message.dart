// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds a message to the list of welcome messages of a chat; requires
/// can_send_welcome_messages administrator right in the chat. There can be up
/// to getOption("welcome_message_count_max") welcome messages in a chat
/// Returns [Ok]
@immutable
class AddChatWelcomeMessage extends TdFunction {
  const AddChatWelcomeMessage({
    required this.chatId,
    required this.inputMessageContent,
  });

  /// [chatId] The identifier of the chat
  final int chatId;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageAnimation,
  /// inputMessageAudio, inputMessageDocument, inputMessagePhoto,
  /// inputMessageRichMessage, inputMessageSticker, inputMessageVideo,
  /// inputMessageVideoNote, inputMessageVoiceNote, inputMessageLocation,
  /// inputMessageVenue, inputMessageContact
  final InputMessageContent inputMessageContent;

  static const String constructor = 'addChatWelcomeMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddChatWelcomeMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.inputMessageContent, inputMessageContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(inputMessageContent)
      ]);
}
