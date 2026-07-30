// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The list of chat folders or a chat folder has changed
@immutable
class UpdateChatFolders extends Update {
  const UpdateChatFolders({
    required this.chatFolders,
    required this.mainChatListPosition,
    required this.areTagsEnabled,
  });

  /// [chatFolders] The new list of chat folders
  final List<ChatFolderInfo> chatFolders;

  /// [mainChatListPosition] Position of the main chat list among chat folders,
  /// 0-based
  final int mainChatListPosition;

  /// [areTagsEnabled] True, if folder tags are enabled
  final bool areTagsEnabled;

  static const String constructor = 'updateChatFolders';

  static UpdateChatFolders? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatFolders(
      chatFolders: List<ChatFolderInfo>.from(((json['chat_folders']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => ChatFolderInfo.fromJson(item as Map<String, dynamic>?))
          .toList()),
      mainChatListPosition: (json['main_chat_list_position'] as int?) ?? 0,
      areTagsEnabled: (json['are_tags_enabled'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_folders': chatFolders.map((item) => item.toJson()).toList(),
        'main_chat_list_position': mainChatListPosition,
        'are_tags_enabled': areTagsEnabled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatFolders &&
          const DeepCollectionEquality()
              .equals(other.chatFolders, chatFolders) &&
          const DeepCollectionEquality()
              .equals(other.mainChatListPosition, mainChatListPosition) &&
          const DeepCollectionEquality()
              .equals(other.areTagsEnabled, areTagsEnabled));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatFolders),
        const DeepCollectionEquality().hash(mainChatListPosition),
        const DeepCollectionEquality().hash(areTagsEnabled)
      ]);
}
