// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds a chat folder by an invite link
/// Returns [Ok]
@immutable
class AddChatFolderByInviteLink extends TdFunction {
  const AddChatFolderByInviteLink({
    required this.inviteLink,
    required this.chatIds,
  });

  /// [inviteLink] Invite link for the chat folder
  final String inviteLink;

  /// [chatIds] Identifiers of the chats added to the chat folder. The chats are
  /// automatically joined if they aren't joined yet
  final List<int> chatIds;

  static const String constructor = 'addChatFolderByInviteLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invite_link': inviteLink,
        'chat_ids': chatIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddChatFolderByInviteLink &&
          const DeepCollectionEquality().equals(other.inviteLink, inviteLink) &&
          const DeepCollectionEquality().equals(other.chatIds, chatIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(inviteLink),
        const DeepCollectionEquality().hash(chatIds)
      ]);
}
