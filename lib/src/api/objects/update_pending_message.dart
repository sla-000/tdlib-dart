// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A new pending text or rich message was received in a chat with a bot. The
/// message must be shown in the chat for at most
/// getOption("pending_text_message_period") seconds, replace any other
/// pending message with the same draft_id, and be deleted whenever any
/// incoming message from the bot in the message thread is received
@immutable
class UpdatePendingMessage extends Update {
  const UpdatePendingMessage({
    required this.chatId,
    required this.forumTopicId,
    required this.draftId,
    required this.content,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [forumTopicId] The forum topic identifier in which the message will be
  /// sent; 0 if none
  final int forumTopicId;

  /// [draftId] Unique identifier of the message draft within the message thread
  final int draftId;

  /// [content] Content of the message; always of the type messageText or
  /// messageRichMessage
  final MessageContent content;

  static const String constructor = 'updatePendingMessage';

  static UpdatePendingMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdatePendingMessage(
      chatId: json['chat_id'] as int,
      forumTopicId: json['forum_topic_id'] as int,
      draftId: int.tryParse(json['draft_id']) ?? 0,
      content:
          MessageContent.fromJson(json['content'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'forum_topic_id': forumTopicId,
        'draft_id': draftId.toString(),
        'content': content.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdatePendingMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.forumTopicId, forumTopicId) &&
          const DeepCollectionEquality().equals(other.draftId, draftId) &&
          const DeepCollectionEquality().equals(other.content, content));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(forumTopicId),
        const DeepCollectionEquality().hash(draftId),
        const DeepCollectionEquality().hash(content)
      ]);
}
