// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A topic in a non-forum supergroup chat
@immutable
class MessageTopicThread extends MessageTopic {
  const MessageTopicThread({
    required this.messageThreadId,
  });

  /// [messageThreadId] Unique identifier of the message thread
  final int messageThreadId;

  static const String constructor = 'messageTopicThread';

  static MessageTopicThread? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageTopicThread(
      messageThreadId: (json['message_thread_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_thread_id': messageThreadId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageTopicThread &&
          const DeepCollectionEquality()
              .equals(other.messageThreadId, messageThreadId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(messageThreadId)]);
}
