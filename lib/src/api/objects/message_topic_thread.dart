import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      messageThreadId: json['message_thread_id'] as int,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
