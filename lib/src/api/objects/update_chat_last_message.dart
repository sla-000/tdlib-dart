// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The last message of a chat was changed
@immutable
class UpdateChatLastMessage extends Update {
  const UpdateChatLastMessage({
    required this.chatId,
    this.lastMessage,
    required this.positions,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [lastMessage] The new last message in the chat; may be null if the last
  /// message became unknown. While the last message is unknown, new messages
  /// can be added to the chat without corresponding updateNewMessage update
  final Message? lastMessage;

  /// [positions] The new chat positions in the chat lists
  final List<ChatPosition> positions;

  static const String constructor = 'updateChatLastMessage';

  static UpdateChatLastMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatLastMessage(
      chatId: json['chat_id'] as int,
      lastMessage:
          Message.fromJson(json['last_message'] as Map<String, dynamic>?),
      positions: List<ChatPosition>.from(
          ((json['positions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatPosition.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'last_message': lastMessage?.toJson(),
        'positions': positions.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatLastMessage &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.lastMessage, lastMessage) &&
          const DeepCollectionEquality().equals(other.positions, positions));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(lastMessage),
        const DeepCollectionEquality().hash(positions)
      ]);
}
