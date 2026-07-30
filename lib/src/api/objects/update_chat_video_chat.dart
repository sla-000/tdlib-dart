// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A chat video chat state has changed
@immutable
class UpdateChatVideoChat extends Update {
  const UpdateChatVideoChat({
    required this.chatId,
    required this.videoChat,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [videoChat] New value of video_chat
  final VideoChat videoChat;

  static const String constructor = 'updateChatVideoChat';

  static UpdateChatVideoChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatVideoChat(
      chatId: json['chat_id'] as int,
      videoChat:
          VideoChat.fromJson(json['video_chat'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'video_chat': videoChat.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatVideoChat &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.videoChat, videoChat));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(videoChat)
      ]);
}
