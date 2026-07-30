// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The current user shared a chat, which was requested by the bot
@immutable
class MessageChatShared extends MessageContent {
  const MessageChatShared({
    required this.chat,
    required this.buttonId,
  });

  /// [chat] The shared chat
  final SharedChat chat;

  /// [buttonId] Identifier of the keyboard button with the request
  final int buttonId;

  static const String constructor = 'messageChatShared';

  static MessageChatShared? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatShared(
      chat: SharedChat.fromJson(json['chat'] as Map<String, dynamic>?)!,
      buttonId: (json['button_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat': chat.toJson(),
        'button_id': buttonId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageChatShared &&
          const DeepCollectionEquality().equals(other.chat, chat) &&
          const DeepCollectionEquality().equals(other.buttonId, buttonId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chat),
        const DeepCollectionEquality().hash(buttonId)
      ]);
}
