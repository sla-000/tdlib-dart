// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Incoming messages were read or the number of unread messages has been
/// changed
@immutable
class UpdateChatReadInbox extends Update {
  const UpdateChatReadInbox({
    required this.chatId,
    required this.lastReadInboxMessageId,
    required this.unreadCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [unreadCount] The number of unread messages left in the chat
  final int unreadCount;

  static const String constructor = 'updateChatReadInbox';

  static UpdateChatReadInbox? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatReadInbox(
      chatId: json['chat_id'] as int,
      lastReadInboxMessageId: json['last_read_inbox_message_id'] as int,
      unreadCount: json['unread_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'last_read_inbox_message_id': lastReadInboxMessageId,
        'unread_count': unreadCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatReadInbox &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.lastReadInboxMessageId, lastReadInboxMessageId) &&
          const DeepCollectionEquality()
              .equals(other.unreadCount, unreadCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(lastReadInboxMessageId),
        const DeepCollectionEquality().hash(unreadCount)
      ]);
}
