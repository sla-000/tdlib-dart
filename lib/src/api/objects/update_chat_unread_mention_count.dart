// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat unread_mention_count has changed
@immutable
class UpdateChatUnreadMentionCount extends Update {
  const UpdateChatUnreadMentionCount({
    required this.chatId,
    required this.unreadMentionCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [unreadMentionCount] The number of unread mention messages left in the
  /// chat
  final int unreadMentionCount;

  static const String constructor = 'updateChatUnreadMentionCount';

  static UpdateChatUnreadMentionCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatUnreadMentionCount(
      chatId: (json['chat_id'] as int?) ?? 0,
      unreadMentionCount: (json['unread_mention_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'unread_mention_count': unreadMentionCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatUnreadMentionCount &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.unreadMentionCount, unreadMentionCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(unreadMentionCount)
      ]);
}
