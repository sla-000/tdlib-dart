// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the pinned state of a chat. There can be up to
/// getOption("pinned_chat_count_max")/getOption("pinned_archived_chat_count_max")
/// pinned non-secret chats and the same number of secret chats in the
/// main/archive chat list. The limit can be increased with Telegram Premium
/// Returns [Ok]
@immutable
class ToggleChatIsPinned extends TdFunction {
  const ToggleChatIsPinned({
    required this.chatList,
    required this.chatId,
    required this.isPinned,
  });

  /// [chatList] Chat list in which to change the pinned state of the chat
  final ChatList chatList;

  /// [chatId] Chat identifier
  final int chatId;

  /// [isPinned] Pass true to pin the chat; pass false to unpin it
  final bool isPinned;

  static const String constructor = 'toggleChatIsPinned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_list': chatList.toJson(),
        'chat_id': chatId,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleChatIsPinned &&
          const DeepCollectionEquality().equals(other.chatList, chatList) &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.isPinned, isPinned));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatList),
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(isPinned)
      ]);
}
