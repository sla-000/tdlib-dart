import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the pinned state of a topic in a forum supergroup chat or a chat
/// with a bot with topics; requires can_manage_topics administrator right in
/// the supergroup. There can be up to
/// getOption("pinned_forum_topic_count_max") pinned forum topics
/// Returns [Ok]
@immutable
class ToggleForumTopicIsPinned extends TdFunction {
  const ToggleForumTopicIsPinned({
    required this.chatId,
    required this.forumTopicId,
    required this.isPinned,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [forumTopicId] Forum topic identifier
  final int forumTopicId;

  /// [isPinned] Pass true to pin the topic; pass false to unpin it
  final bool isPinned;

  static const String constructor = 'toggleForumTopicIsPinned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'forum_topic_id': forumTopicId,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
