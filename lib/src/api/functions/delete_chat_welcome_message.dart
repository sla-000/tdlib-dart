// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes a welcome message of a chat; requires can_send_welcome_messages
/// administrator right in the chat
/// Returns [Ok]
@immutable
class DeleteChatWelcomeMessage extends TdFunction {
  const DeleteChatWelcomeMessage({
    required this.chatId,
    required this.welcomeMessageId,
  });

  /// [chatId] The identifier of the chat
  final int chatId;

  /// [welcomeMessageId] The identifier of the welcome message
  final int welcomeMessageId;

  static const String constructor = 'deleteChatWelcomeMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'welcome_message_id': welcomeMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteChatWelcomeMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.welcomeMessageId, welcomeMessageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(welcomeMessageId)
      ]);
}
