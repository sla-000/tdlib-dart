// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message content was opened. Updates voice note messages to "listened",
/// video note messages to "viewed" and starts the self-destruct timer
@immutable
class UpdateMessageContentOpened extends Update {
  const UpdateMessageContentOpened({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  static const String constructor = 'updateMessageContentOpened';

  static UpdateMessageContentOpened? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageContentOpened(
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
          other is UpdateMessageContentOpened &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId)
      ]);
}
