// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The list of welcome messages of a chat has changed
@immutable
class UpdateChatWelcomeMessages extends Update {
  const UpdateChatWelcomeMessages({
    required this.chatId,
    required this.messages,
  });

  /// [chatId] The identifier of the chat
  final int chatId;

  /// [messages] The new list of welcome messages of the chat in the order from
  /// the first to the last sent
  final List<WelcomeMessage> messages;

  static const String constructor = 'updateChatWelcomeMessages';

  static UpdateChatWelcomeMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatWelcomeMessages(
      chatId: (json['chat_id'] as int?) ?? 0,
      messages: List<WelcomeMessage>.from(((json['messages']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => WelcomeMessage.fromJson(item as Map<String, dynamic>?))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'messages': messages.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatWelcomeMessages &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messages, messages));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messages)
      ]);
}
