import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an HTTPS link to a topic in a forum supergroup chat. This is an
/// offline method
/// Returns [MessageLink]
@immutable
class GetForumTopicLink extends TdFunction {
  const GetForumTopicLink({
    required this.chatId,
    required this.forumTopicId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [forumTopicId] Forum topic identifier
  final int forumTopicId;

  static const String constructor = 'getForumTopicLink';

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
