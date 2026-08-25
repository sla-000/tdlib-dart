// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a chat in a community
@immutable
class CommunityChat extends TdObject {
  const CommunityChat({
    required this.chatId,
    required this.canViewHistory,
    required this.isHidden,
  });

  /// [chatId] Identifier of the chat in the community
  final int chatId;

  /// [canViewHistory] True, if message history of the chat can be viewed
  final bool canViewHistory;

  /// [isHidden] True, if the chat is hidden in the list of community chats; for
  /// community administrators only
  final bool isHidden;

  static const String constructor = 'communityChat';

  static CommunityChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CommunityChat(
      chatId: (json['chat_id'] as int?) ?? 0,
      canViewHistory: (json['can_view_history'] as bool?) ?? false,
      isHidden: (json['is_hidden'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'can_view_history': canViewHistory,
        'is_hidden': isHidden,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CommunityChat &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.canViewHistory, canViewHistory) &&
          const DeepCollectionEquality().equals(other.isHidden, isHidden));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(canViewHistory),
        const DeepCollectionEquality().hash(isHidden)
      ]);
}
