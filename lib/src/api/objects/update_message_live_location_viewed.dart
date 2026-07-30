// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A message with a live location was viewed. When the update is received,
/// the application is expected to update the live location
@immutable
class UpdateMessageLiveLocationViewed extends Update {
  const UpdateMessageLiveLocationViewed({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat with the live location message
  final int chatId;

  /// [messageId] Identifier of the message with live location
  final int messageId;

  static const String constructor = 'updateMessageLiveLocationViewed';

  static UpdateMessageLiveLocationViewed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageLiveLocationViewed(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
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
          other is UpdateMessageLiveLocationViewed &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageId, messageId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageId)
      ]);
}
