// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends a draft for a being generated text message; for bots only
/// Returns [Ok]
@immutable
class SendTextMessageDraft extends TdFunction {
  const SendTextMessageDraft({
    required this.chatId,
    required this.forumTopicId,
    required this.draftId,
    required this.canStop,
    required this.keepOnStop,
    this.text,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [forumTopicId] The forum topic identifier in which the message will be
  /// sent; pass 0 if none
  final int forumTopicId;

  /// [draftId] Unique identifier of the draft
  final int draftId;

  /// [canStop] Pass true to show the user a button to stop further drafts
  final bool canStop;

  /// [keepOnStop] Pass true to keep the current draft when the user stops
  /// further generation
  final bool keepOnStop;

  /// [text] Draft text of the message; pass null to show a "Thinking..."
  /// placeholder
  final FormattedText? text;

  static const String constructor = 'sendTextMessageDraft';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'forum_topic_id': forumTopicId,
        'draft_id': draftId.toString(),
        'can_stop': canStop,
        'keep_on_stop': keepOnStop,
        'text': text?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendTextMessageDraft &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.forumTopicId, forumTopicId) &&
          const DeepCollectionEquality().equals(other.draftId, draftId) &&
          const DeepCollectionEquality().equals(other.canStop, canStop) &&
          const DeepCollectionEquality().equals(other.keepOnStop, keepOnStop) &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(forumTopicId),
        const DeepCollectionEquality().hash(draftId),
        const DeepCollectionEquality().hash(canStop),
        const DeepCollectionEquality().hash(keepOnStop),
        const DeepCollectionEquality().hash(text)
      ]);
}
