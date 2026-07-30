// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is an invite link to a chat folder. Call
/// checkChatFolderInviteLink with the given invite link to process the link.
/// If the link is valid and the user wants to join the chat folder, then call
/// addChatFolderByInviteLink
@immutable
class InternalLinkTypeChatFolderInvite extends InternalLinkType {
  const InternalLinkTypeChatFolderInvite({
    required this.inviteLink,
  });

  /// [inviteLink] Internal representation of the invite link
  final String inviteLink;

  static const String constructor = 'internalLinkTypeChatFolderInvite';

  static InternalLinkTypeChatFolderInvite? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeChatFolderInvite(
      inviteLink: (json['invite_link'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invite_link': inviteLink,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeChatFolderInvite &&
          const DeepCollectionEquality().equals(other.inviteLink, inviteLink));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(inviteLink)]);
}
