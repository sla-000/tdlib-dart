// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
      chatId: (json['chat_id'] as int?) ?? 0,
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatReplyMarkup &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.replyMarkupMessage, replyMarkupMessage));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(replyMarkupMessage)
      ]);
}
