// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns invite links created by the current user for a shareable chat
/// folder
/// Returns [ChatFolderInviteLinks]
@immutable
class GetChatFolderInviteLinks extends TdFunction {
  const GetChatFolderInviteLinks({
    required this.chatFolderId,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  static const String constructor = 'getChatFolderInviteLinks';

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
          other is GetChatFolderInviteLinks &&
          const DeepCollectionEquality()
              .equals(other.chatFolderId, chatFolderId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatFolderId)]);
}
