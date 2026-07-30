import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns users which can be mentioned in the chat
@immutable
class ChatMembersFilterMention extends ChatMembersFilter {
  const ChatMembersFilterMention({
    this.topicId,
  });

  /// [topicId] Identifier of the topic in which the users will be mentioned;
  /// pass null if none
  final MessageTopic? topicId;

  static const String constructor = 'chatMembersFilterMention';

  static ChatMembersFilterMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMembersFilterMention(
      topicId: MessageTopic.fromJson(json['topic_id'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'topic_id': topicId?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
