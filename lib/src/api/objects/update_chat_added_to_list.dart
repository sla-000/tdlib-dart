// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A chat was added to a chat list
@immutable
class UpdateChatAddedToList extends Update {
  const UpdateChatAddedToList({
    required this.chatId,
    required this.chatList,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [chatList] The chat list to which the chat was added
  final ChatList chatList;

  static const String constructor = 'updateChatAddedToList';

  static UpdateChatAddedToList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatAddedToList(
      chatId: json['chat_id'] as int,
      chatList: ChatList.fromJson(json['chat_list'] as Map<String, dynamic>?)!,
    );
  }

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
          other is UpdateChatAddedToList &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.chatList, chatList));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(chatList)
      ]);
}
