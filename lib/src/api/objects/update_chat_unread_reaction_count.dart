// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat unread_reaction_count has changed
@immutable
class UpdateChatUnreadReactionCount extends Update {
  const UpdateChatUnreadReactionCount({
    required this.chatId,
    required this.unreadReactionCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [unreadReactionCount] The number of messages with unread reactions left in
  /// the chat
  final int unreadReactionCount;

  static const String constructor = 'updateChatUnreadReactionCount';

  static UpdateChatUnreadReactionCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatUnreadReactionCount(
      chatId: (json['chat_id'] as int?) ?? 0,
      unreadReactionCount: (json['unread_reaction_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'unread_reaction_count': unreadReactionCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatUnreadReactionCount &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.unreadReactionCount, unreadReactionCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(unreadReactionCount)
      ]);
}
