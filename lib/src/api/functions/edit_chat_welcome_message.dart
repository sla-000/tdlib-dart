// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Edits a welcome message of a chat; requires can_send_welcome_messages
/// administrator right in the chat
/// Returns [Ok]
@immutable
class EditChatWelcomeMessage extends TdFunction {
  const EditChatWelcomeMessage({
    required this.chatId,
    required this.welcomeMessageId,
    required this.inputMessageContent,
  });

  /// [chatId] The identifier of the chat
  final int chatId;

  /// [welcomeMessageId] The identifier of the welcome message
  final int welcomeMessageId;

  /// [inputMessageContent] New content of the message. Must be one of the
  /// following types: inputMessageText, inputMessageAnimation,
  /// inputMessageAudio, inputMessageDocument, inputMessagePhoto,
  /// inputMessageRichMessage, inputMessageSticker, inputMessageVideo,
  /// inputMessageVideoNote, inputMessageVoiceNote
  final InputMessageContent inputMessageContent;

  static const String constructor = 'editChatWelcomeMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'welcome_message_id': welcomeMessageId,
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditChatWelcomeMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.welcomeMessageId, welcomeMessageId) &&
          const DeepCollectionEquality()
              .equals(other.inputMessageContent, inputMessageContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(welcomeMessageId),
        const DeepCollectionEquality().hash(inputMessageContent)
      ]);
}
