import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a draft for a being generated text message; for bots only
/// Returns [Ok]
@immutable
class SendTextMessageDraft extends TdFunction {
  const SendTextMessageDraft({
    required this.chatId,
    required this.forumTopicId,
    required this.draftId,
    this.text,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [forumTopicId] The forum topic identifier in which the message will be
  /// sent; pass 0 if none
  final int forumTopicId;

  /// [draftId] Unique identifier of the draft
  final int draftId;

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
        'draft_id': draftId,
        'text': text?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
