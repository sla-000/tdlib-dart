// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Uses an invite link to add the current user to the chat if possible. May
/// return an error with a message "INVITE_REQUEST_SENT" if only a join
/// request was created
/// Returns [Chat]
@immutable
class JoinChatByInviteLink extends TdFunction {
  const JoinChatByInviteLink({
    required this.inviteLink,
  });

  /// [inviteLink] Invite link to use
  final String inviteLink;

  static const String constructor = 'joinChatByInviteLink';

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
          other is JoinChatByInviteLink &&
          const DeepCollectionEquality().equals(other.inviteLink, inviteLink));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(inviteLink)]);
}
