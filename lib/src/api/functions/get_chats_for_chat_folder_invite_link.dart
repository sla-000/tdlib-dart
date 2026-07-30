// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns identifiers of chats from a chat folder, suitable for adding to a
/// chat folder invite link
/// Returns [Chats]
@immutable
class GetChatsForChatFolderInviteLink extends TdFunction {
  const GetChatsForChatFolderInviteLink({
    required this.chatFolderId,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  static const String constructor = 'getChatsForChatFolderInviteLink';

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
          other is GetChatsForChatFolderInviteLink &&
          const DeepCollectionEquality()
              .equals(other.chatFolderId, chatFolderId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatFolderId)]);
}
