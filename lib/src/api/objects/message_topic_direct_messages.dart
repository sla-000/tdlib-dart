// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A topic in a channel direct messages chat administered by the current user
@immutable
class MessageTopicDirectMessages extends MessageTopic {
  const MessageTopicDirectMessages({
    required this.directMessagesChatTopicId,
  });

  /// [directMessagesChatTopicId] Unique identifier of the topic
  final int directMessagesChatTopicId;

  static const String constructor = 'messageTopicDirectMessages';

  static MessageTopicDirectMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageTopicDirectMessages(
      directMessagesChatTopicId: json['direct_messages_chat_topic_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'direct_messages_chat_topic_id': directMessagesChatTopicId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageTopicDirectMessages &&
          const DeepCollectionEquality().equals(
              other.directMessagesChatTopicId, directMessagesChatTopicId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(directMessagesChatTopicId)
      ]);
}
