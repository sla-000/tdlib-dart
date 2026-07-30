// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds a local message to a chat. The message is persistent across
/// application restarts only if the message database is used. Returns the
/// added message
/// Returns [Message]
@immutable
class AddLocalMessage extends TdFunction {
  const AddLocalMessage({
    required this.chatId,
    required this.senderId,
    this.replyTo,
    required this.disableNotification,
    required this.inputMessageContent,
  });

  /// [chatId] Target chat; channel direct messages chats aren't supported
  final int chatId;

  /// [senderId] Identifier of the sender of the message
  final MessageSender senderId;

  /// [replyTo] Information about the message or story to be replied; pass null
  /// if none
  final InputMessageReplyTo? replyTo;

  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [inputMessageContent] The content of the message to be added
  final InputMessageContent inputMessageContent;

  static const String constructor = 'addLocalMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'sender_id': senderId.toJson(),
        'reply_to': replyTo?.toJson(),
        'disable_notification': disableNotification,
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddLocalMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.senderId, senderId) &&
          const DeepCollectionEquality().equals(other.replyTo, replyTo) &&
          const DeepCollectionEquality()
              .equals(other.disableNotification, disableNotification) &&
          const DeepCollectionEquality()
              .equals(other.inputMessageContent, inputMessageContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(senderId),
        const DeepCollectionEquality().hash(replyTo),
        const DeepCollectionEquality().hash(disableNotification),
        const DeepCollectionEquality().hash(inputMessageContent)
      ]);
}
