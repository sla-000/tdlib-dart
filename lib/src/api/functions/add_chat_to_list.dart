// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds a chat to a chat list. A chat can't be simultaneously in Main and
/// Archive chat lists, so it is automatically removed from another one if
/// needed
/// Returns [Ok]
@immutable
class AddChatToList extends TdFunction {
  const AddChatToList({
    required this.chatId,
    required this.chatList,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [chatList] The chat list. Use getChatListsToAddChat to get suitable chat
  /// lists
  final ChatList chatList;

  static const String constructor = 'addChatToList';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'chat_list': chatList.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddChatToList &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.chatList, chatList));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(chatList)
      ]);
}
