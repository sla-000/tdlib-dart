// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns identifiers of pinned or always included chats from a chat folder,
/// which are suggested to be left when the chat folder is deleted
/// Returns [Chats]
@immutable
class GetChatFolderChatsToLeave extends TdFunction {
  const GetChatFolderChatsToLeave({
    required this.chatFolderId,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  static const String constructor = 'getChatFolderChatsToLeave';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_folder_id': chatFolderId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetChatFolderChatsToLeave &&
          const DeepCollectionEquality()
              .equals(other.chatFolderId, chatFolderId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatFolderId)]);
}
