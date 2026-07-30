// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes existing chat folder
/// Returns [Ok]
@immutable
class DeleteChatFolder extends TdFunction {
  const DeleteChatFolder({
    required this.chatFolderId,
    required this.leaveChatIds,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  /// [leaveChatIds] Identifiers of the chats to leave. The chats must be pinned
  /// or always included in the folder
  final List<int> leaveChatIds;

  static const String constructor = 'deleteChatFolder';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_folder_id': chatFolderId,
        'leave_chat_ids': leaveChatIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteChatFolder &&
          const DeepCollectionEquality()
              .equals(other.chatFolderId, chatFolderId) &&
          const DeepCollectionEquality()
              .equals(other.leaveChatIds, leaveChatIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatFolderId),
        const DeepCollectionEquality().hash(leaveChatIds)
      ]);
}
