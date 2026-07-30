// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Outgoing messages were read
@immutable
class UpdateChatReadOutbox extends Update {
  const UpdateChatReadOutbox({
    required this.chatId,
    required this.lastReadOutboxMessageId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [lastReadOutboxMessageId] Identifier of last read outgoing message
  final int lastReadOutboxMessageId;

  static const String constructor = 'updateChatReadOutbox';

  static UpdateChatReadOutbox? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatReadOutbox(
      chatId: (json['chat_id'] as int?) ?? 0,
      lastReadOutboxMessageId:
          (json['last_read_outbox_message_id'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'last_read_outbox_message_id': lastReadOutboxMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatReadOutbox &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.lastReadOutboxMessageId, lastReadOutboxMessageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(lastReadOutboxMessageId)
      ]);
}
