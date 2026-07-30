// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A chat was blocked or unblocked
@immutable
class UpdateChatBlockList extends Update {
  const UpdateChatBlockList({
    required this.chatId,
    this.blockList,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [blockList] Block list to which the chat is added; may be null if none
  final BlockList? blockList;

  static const String constructor = 'updateChatBlockList';

  static UpdateChatBlockList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatBlockList(
      chatId: (json['chat_id'] as int?) ?? 0,
      blockList:
          BlockList.fromJson(json['block_list'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'block_list': blockList?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatBlockList &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.blockList, blockList));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(blockList)
      ]);
}
