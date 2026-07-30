// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Number of unread messages in a chat list has changed. This update is sent
/// only if the message database is used
@immutable
class UpdateUnreadMessageCount extends Update {
  const UpdateUnreadMessageCount({
    required this.chatList,
    required this.unreadCount,
    required this.unreadUnmutedCount,
  });

  /// [chatList] The chat list with changed number of unread messages
  final ChatList chatList;

  /// [unreadCount] Total number of unread messages
  final int unreadCount;

  /// [unreadUnmutedCount] Total number of unread messages in unmuted chats
  final int unreadUnmutedCount;

  static const String constructor = 'updateUnreadMessageCount';

  static UpdateUnreadMessageCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUnreadMessageCount(
      chatList: ChatList.fromJson(json['chat_list'] as Map<String, dynamic>?)!,
      unreadCount: (json['unread_count'] as int?) ?? 0,
      unreadUnmutedCount: (json['unread_unmuted_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_list': chatList.toJson(),
        'unread_count': unreadCount,
        'unread_unmuted_count': unreadUnmutedCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateUnreadMessageCount &&
          const DeepCollectionEquality().equals(other.chatList, chatList) &&
          const DeepCollectionEquality()
              .equals(other.unreadCount, unreadCount) &&
          const DeepCollectionEquality()
              .equals(other.unreadUnmutedCount, unreadUnmutedCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatList),
        const DeepCollectionEquality().hash(unreadCount),
        const DeepCollectionEquality().hash(unreadUnmutedCount)
      ]);
}
