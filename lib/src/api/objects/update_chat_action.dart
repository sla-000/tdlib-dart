// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message sender activity in the chat has changed
@immutable
class UpdateChatAction extends Update {
  const UpdateChatAction({
    required this.chatId,
    this.topicId,
    required this.senderId,
    required this.action,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [topicId] Identifier of the specific topic in which the action was
  /// performed; may be null if none
  final MessageTopic? topicId;

  /// [senderId] Identifier of a message sender performing the action
  final MessageSender senderId;

  /// [action] The action
  final ChatAction action;

  static const String constructor = 'updateChatAction';

  static UpdateChatAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatAction(
      chatId: json['chat_id'] as int,
      topicId: MessageTopic.fromJson(json['topic_id'] as Map<String, dynamic>?),
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?)!,
      action: ChatAction.fromJson(json['action'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId?.toJson(),
        'sender_id': senderId.toJson(),
        'action': action.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatAction &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality().equals(other.senderId, senderId) &&
          const DeepCollectionEquality().equals(other.action, action));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(senderId),
        const DeepCollectionEquality().hash(action)
      ]);
}
