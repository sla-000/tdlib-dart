import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Marks all reactions in a topic in a forum supergroup chat or a chat with a
/// bot with topics as read
/// Returns [Ok]
@immutable
class ReadAllForumTopicReactions extends TdFunction {
  const ReadAllForumTopicReactions({
    required this.chatId,
    required this.forumTopicId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [forumTopicId] Forum topic identifier in which reactions are marked as
  /// read
  final int forumTopicId;

  static const String constructor = 'readAllForumTopicReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'forum_topic_id': forumTopicId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
