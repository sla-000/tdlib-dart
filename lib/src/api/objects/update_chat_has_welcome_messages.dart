// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A chat's has_welcome_messages field has changed
@immutable
class UpdateChatHasWelcomeMessages extends Update {
  const UpdateChatHasWelcomeMessages({
    required this.chatId,
    required this.hasWelcomeMessages,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [hasWelcomeMessages] New value of has_welcome_messages
  final bool hasWelcomeMessages;

  static const String constructor = 'updateChatHasWelcomeMessages';

  static UpdateChatHasWelcomeMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatHasWelcomeMessages(
      chatId: (json['chat_id'] as int?) ?? 0,
      hasWelcomeMessages: (json['has_welcome_messages'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'has_welcome_messages': hasWelcomeMessages,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatHasWelcomeMessages &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.hasWelcomeMessages, hasWelcomeMessages));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(hasWelcomeMessages)
      ]);
}
