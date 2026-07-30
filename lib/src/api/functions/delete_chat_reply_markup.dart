// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes the default reply markup from a chat. Must be called after a
/// one-time keyboard or a replyMarkupForceReply reply markup has been used or
/// dismissed
/// Returns [Ok]
@immutable
class DeleteChatReplyMarkup extends TdFunction {
  const DeleteChatReplyMarkup({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] The message identifier of the used keyboard
  final int messageId;

  static const String constructor = 'deleteChatReplyMarkup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteChatReplyMarkup &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId)
      ]);
}
