// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An area pointing to a message
@immutable
class InputStoryAreaTypeMessage extends InputStoryAreaType {
  const InputStoryAreaTypeMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat with the message. Currently, the chat must
  /// be a supergroup or a channel chat
  final int chatId;

  /// [messageId] Identifier of the message. Use
  /// messageProperties.can_be_shared_in_story to check whether the message is
  /// suitable
  final int messageId;

  static const String constructor = 'inputStoryAreaTypeMessage';

  static InputStoryAreaTypeMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreaTypeMessage(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
    );
  }

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
          other is InputStoryAreaTypeMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId)
      ]);
}
