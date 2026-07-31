// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends a draft for a being generated rich message; for bots only
/// Returns [Ok]
@immutable
class SendRichMessageDraft extends TdFunction {
  const SendRichMessageDraft({
    required this.chatId,
    required this.forumTopicId,
    required this.draftId,
    required this.message,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [forumTopicId] The forum topic identifier in which the message will be
  /// sent; pass 0 if none
  final int forumTopicId;

  /// [draftId] Unique identifier of the draft
  final int draftId;

  /// [message] Draft of the message
  final InputRichMessage message;

  static const String constructor = 'sendRichMessageDraft';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'forum_topic_id': forumTopicId,
        'draft_id': draftId.toString(),
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendRichMessageDraft &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.forumTopicId, forumTopicId) &&
          const DeepCollectionEquality().equals(other.draftId, draftId) &&
          const DeepCollectionEquality().equals(other.message, message));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(forumTopicId),
        const DeepCollectionEquality().hash(draftId),
        const DeepCollectionEquality().hash(message)
      ]);
}
