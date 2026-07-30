import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat reply markup was changed
@immutable
class UpdateChatReplyMarkup extends Update {
  const UpdateChatReplyMarkup({
    required this.chatId,
    this.replyMarkupMessage,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [replyMarkupMessage] The message from which the reply markup must be used;
  /// may be null if there is no default reply markup in the chat
  final Message? replyMarkupMessage;

  static const String constructor = 'updateChatReplyMarkup';

  static UpdateChatReplyMarkup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatReplyMarkup(
      chatId: json['chat_id'] as int,
      replyMarkupMessage: Message.fromJson(
          json['reply_markup_message'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'reply_markup_message': replyMarkupMessage?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
