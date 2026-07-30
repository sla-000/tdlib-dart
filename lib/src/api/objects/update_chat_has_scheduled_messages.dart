// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A chat's has_scheduled_messages field has changed
@immutable
class UpdateChatHasScheduledMessages extends Update {
  const UpdateChatHasScheduledMessages({
    required this.chatId,
    required this.hasScheduledMessages,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [hasScheduledMessages] New value of has_scheduled_messages
  final bool hasScheduledMessages;

  static const String constructor = 'updateChatHasScheduledMessages';

  static UpdateChatHasScheduledMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatHasScheduledMessages(
      chatId: (json['chat_id'] as int?) ?? 0,
      hasScheduledMessages: (json['has_scheduled_messages'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'has_scheduled_messages': hasScheduledMessages,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatHasScheduledMessages &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.hasScheduledMessages, hasScheduledMessages));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(hasScheduledMessages)
      ]);
}
