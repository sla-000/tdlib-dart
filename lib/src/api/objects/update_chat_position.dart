// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The position of a chat in a chat list has changed. An
/// updateChatLastMessage or updateChatDraftMessage update might be sent
/// instead of the update
@immutable
class UpdateChatPosition extends Update {
  const UpdateChatPosition({
    required this.chatId,
    required this.position,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [position] New chat position. If new order is 0, then the chat needs to be
  /// removed from the list
  final ChatPosition position;

  static const String constructor = 'updateChatPosition';

  static UpdateChatPosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatPosition(
      chatId: json['chat_id'] as int,
      position:
          ChatPosition.fromJson(json['position'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'position': position.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatPosition &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.position, position));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(position)
      ]);
}
