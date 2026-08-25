// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Stops a pending message generation by a bot
/// Returns [Ok]
@immutable
class StopPendingMessage extends TdFunction {
  const StopPendingMessage({
    required this.chatId,
    this.topicId,
    required this.draftId,
  });

  /// [chatId] Identifier of the chat with the bot
  final int chatId;

  /// [topicId] Identifier of the topic in which the action is performed; pass
  /// null if none
  final MessageTopic? topicId;

  /// [draftId] Unique identifier of the message draft within the message thread
  final int draftId;

  static const String constructor = 'stopPendingMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId?.toJson(),
        'draft_id': draftId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StopPendingMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.topicId, topicId) &&
          const DeepCollectionEquality().equals(other.draftId, draftId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(topicId),
        const DeepCollectionEquality().hash(draftId)
      ]);
}
