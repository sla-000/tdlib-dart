// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A topic in Saved Messages chat
@immutable
class MessageTopicSavedMessages extends MessageTopic {
  const MessageTopicSavedMessages({
    required this.savedMessagesTopicId,
  });

  /// [savedMessagesTopicId] Unique identifier of the Saved Messages topic
  final int savedMessagesTopicId;

  static const String constructor = 'messageTopicSavedMessages';

  static MessageTopicSavedMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageTopicSavedMessages(
      savedMessagesTopicId: json['saved_messages_topic_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'saved_messages_topic_id': savedMessagesTopicId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageTopicSavedMessages &&
          const DeepCollectionEquality()
              .equals(other.savedMessagesTopicId, savedMessagesTopicId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(savedMessagesTopicId)]);
}
