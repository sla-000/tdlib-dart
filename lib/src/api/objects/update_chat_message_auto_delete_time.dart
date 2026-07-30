// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message auto-delete or self-destruct timer setting for a chat was
/// changed
@immutable
class UpdateChatMessageAutoDeleteTime extends Update {
  const UpdateChatMessageAutoDeleteTime({
    required this.chatId,
    required this.messageAutoDeleteTime,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageAutoDeleteTime] New value of message_auto_delete_time
  final int messageAutoDeleteTime;

  static const String constructor = 'updateChatMessageAutoDeleteTime';

  static UpdateChatMessageAutoDeleteTime? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatMessageAutoDeleteTime(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageAutoDeleteTime: (json['message_auto_delete_time'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_auto_delete_time': messageAutoDeleteTime,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatMessageAutoDeleteTime &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.messageAutoDeleteTime, messageAutoDeleteTime));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageAutoDeleteTime)
      ]);
}
