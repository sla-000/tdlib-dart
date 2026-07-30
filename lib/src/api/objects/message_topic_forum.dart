import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A topic in a forum supergroup chat or a chat with a bot
@immutable
class MessageTopicForum extends MessageTopic {
  const MessageTopicForum({
    required this.forumTopicId,
  });

  /// [forumTopicId] Unique identifier of the forum topic
  final int forumTopicId;

  static const String constructor = 'messageTopicForum';

  static MessageTopicForum? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageTopicForum(
      forumTopicId: json['forum_topic_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'forum_topic_id': forumTopicId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
