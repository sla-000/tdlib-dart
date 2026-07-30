import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a link to a message or a forum topic in a chat
@immutable
class MessageLinkInfo extends TdObject {
  const MessageLinkInfo({
    required this.isPublic,
    required this.chatId,
    this.topicId,
    this.message,
    required this.mediaTimestamp,
    required this.checklistTaskId,
    required this.pollOptionId,
    required this.forAlbum,
  });

  /// [isPublic] True, if the link is a public link for a message or a forum
  /// topic in a chat
  final bool isPublic;

  /// [chatId] If found, identifier of the chat to which the link points, 0
  /// otherwise
  final int chatId;

  /// [topicId] Identifier of the specific topic in which the message must be
  /// opened, or a topic to open if the message is missing; may be null if none
  final MessageTopic? topicId;

  /// [message] If found, the linked message; may be null
  final Message? message;

  /// [mediaTimestamp] Timestamp from which the video/audio/video note/voice
  /// note/story playing must start, in seconds; 0 if not specified. The media
  /// can be in the message content or in its link preview
  final int mediaTimestamp;

  /// [checklistTaskId] Identifier of the checklist task that is linked; 0 if
  /// none
  final int checklistTaskId;

  /// [pollOptionId] Identifier of the poll option that is linked; empty if none
  final String pollOptionId;

  /// [forAlbum] True, if the whole media album to which the message belongs is
  /// linked
  final bool forAlbum;

  static const String constructor = 'messageLinkInfo';

  static MessageLinkInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageLinkInfo(
      isPublic: json['is_public'] as bool,
      chatId: json['chat_id'] as int,
      topicId: MessageTopic.fromJson(json['topic_id'] as Map<String, dynamic>?),
      message: Message.fromJson(json['message'] as Map<String, dynamic>?),
      mediaTimestamp: json['media_timestamp'] as int,
      checklistTaskId: json['checklist_task_id'] as int,
      pollOptionId: json['poll_option_id'] as String,
      forAlbum: json['for_album'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_public': isPublic,
        'chat_id': chatId,
        'topic_id': topicId?.toJson(),
        'message': message?.toJson(),
        'media_timestamp': mediaTimestamp,
        'checklist_task_id': checklistTaskId,
        'poll_option_id': pollOptionId,
        'for_album': forAlbum,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
