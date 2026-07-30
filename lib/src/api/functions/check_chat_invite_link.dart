// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks the validity of an invite link for a chat and returns information
/// about the corresponding chat
/// Returns [ChatInviteLinkInfo]
@immutable
class CheckChatInviteLink extends TdFunction {
  const CheckChatInviteLink({
    required this.inviteLink,
  });

  /// [inviteLink] Invite link to be checked
  final String inviteLink;

  static const String constructor = 'checkChatInviteLink';

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
          other is CheckChatInviteLink &&
          const DeepCollectionEquality().equals(other.inviteLink, inviteLink));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(inviteLink)]);
}
