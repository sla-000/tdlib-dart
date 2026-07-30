// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user is a member of the chat and has some additional privileges. In
/// basic groups, administrators can edit and delete messages sent by others,
/// add new members, ban unprivileged members, and manage video chats. In
/// supergroups and channels, there are more detailed options for
/// administrator privileges
@immutable
class ChatMemberStatusAdministrator extends ChatMemberStatus {
  const ChatMemberStatusAdministrator({
    required this.canBeEdited,
    required this.rights,
  });

  /// [canBeEdited] True, if the current user can edit the administrator
  /// privileges for the called user
  final bool canBeEdited;

  /// [rights] Rights of the administrator
  final ChatAdministratorRights rights;

  static const String constructor = 'chatMemberStatusAdministrator';

  static ChatMemberStatusAdministrator? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMemberStatusAdministrator(
      canBeEdited: json['can_be_edited'] as bool,
      rights: ChatAdministratorRights.fromJson(
          json['rights'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_be_edited': canBeEdited,
        'rights': rights.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatMemberStatusAdministrator &&
          const DeepCollectionEquality()
              .equals(other.canBeEdited, canBeEdited) &&
          const DeepCollectionEquality().equals(other.rights, rights));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(canBeEdited),
        const DeepCollectionEquality().hash(rights)
      ]);
}
