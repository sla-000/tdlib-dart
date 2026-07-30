import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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

  /// [message] Draft of the message; file upload isn't supported
  final InputRichMessage message;

  static const String constructor = 'sendRichMessageDraft';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'forum_topic_id': forumTopicId,
        'draft_id': draftId,
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
