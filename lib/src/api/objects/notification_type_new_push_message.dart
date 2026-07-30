// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// New message was received through a push notification
@immutable
class NotificationTypeNewPushMessage extends NotificationType {
  const NotificationTypeNewPushMessage({
    required this.messageId,
    required this.senderId,
    required this.senderName,
    required this.isOutgoing,
    required this.content,
  });

  /// [messageId] The message identifier. The message will not be available in
  /// the chat history, but the identifier can be used in viewMessages, or as a
  /// message to be replied in the same chat
  final int messageId;

  /// [senderId] Identifier of the sender of the message. Corresponding user or
  /// chat may be inaccessible
  final MessageSender senderId;

  /// [senderName] Name of the sender
  final String senderName;

  /// [isOutgoing] True, if the message is outgoing
  final bool isOutgoing;

  /// [content] Push message content
  final PushMessageContent content;

  static const String constructor = 'notificationTypeNewPushMessage';

  static NotificationTypeNewPushMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationTypeNewPushMessage(
      messageId: (json['message_id'] as int?) ?? 0,
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?)!,
      senderName: (json['sender_name'] as String?) ?? '',
      isOutgoing: (json['is_outgoing'] as bool?) ?? false,
      content: PushMessageContent.fromJson(
          json['content'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        'sender_id': senderId.toJson(),
        'sender_name': senderName,
        'is_outgoing': isOutgoing,
        'content': content.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is NotificationTypeNewPushMessage &&
          const DeepCollectionEquality().equals(other.messageId, messageId) &&
          const DeepCollectionEquality().equals(other.senderId, senderId) &&
          const DeepCollectionEquality().equals(other.senderName, senderName) &&
          const DeepCollectionEquality().equals(other.isOutgoing, isOutgoing) &&
          const DeepCollectionEquality().equals(other.content, content));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(messageId),
        const DeepCollectionEquality().hash(senderId),
        const DeepCollectionEquality().hash(senderName),
        const DeepCollectionEquality().hash(isOutgoing),
        const DeepCollectionEquality().hash(content)
      ]);
}
