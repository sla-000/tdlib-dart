// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends a notification about user activity in a chat
/// Returns [Ok]
@immutable
class SendChatAction extends TdFunction {
  const SendChatAction({
    required this.chatId,
    this.topicId,
    this.businessConnectionId,
    this.action,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [topicId] Identifier of the topic in which the action is performed; pass
  /// null if none
  final MessageTopic? topicId;

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which to send the request; for bots only
  final String? businessConnectionId;

  /// [action] The action description; pass null to cancel the currently active
  /// action
  final ChatAction? action;

  static const String constructor = 'sendChatAction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId?.toJson(),
        'business_connection_id': businessConnectionId,
        'action': action?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendChatAction &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality()
              .equals(other.businessConnectionId, businessConnectionId) &&
          const DeepCollectionEquality().equals(other.action, action));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(businessConnectionId),
        const DeepCollectionEquality().hash(action)
      ]);
}
