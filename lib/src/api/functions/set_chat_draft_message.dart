import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the draft message in a chat or a topic
/// Returns [Ok]
@immutable
class SetChatDraftMessage extends TdFunction {
  const SetChatDraftMessage({
    required this.chatId,
    this.topicId,
    this.draftMessage,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [topicId] Topic in which the draft will be changed; pass null to change
  /// the draft for the chat itself
  final MessageTopic? topicId;

  /// [draftMessage] New draft message; pass null to remove the draft. All files
  /// in draft message content must be of the type inputFileLocal. Media
  /// thumbnails and captions are ignored
  final DraftMessage? draftMessage;

  static const String constructor = 'setChatDraftMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'topic_id': topicId?.toJson(),
        'draft_message': draftMessage?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
