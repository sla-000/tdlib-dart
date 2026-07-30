// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a chat folder by its identifier
/// Returns [ChatFolder]
@immutable
class GetChatFolder extends TdFunction {
  const GetChatFolder({
    required this.chatFolderId,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  static const String constructor = 'getChatFolder';

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
          other is GetChatFolder &&
          const DeepCollectionEquality()
              .equals(other.chatFolderId, chatFolderId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(chatFolderId)]);
}
