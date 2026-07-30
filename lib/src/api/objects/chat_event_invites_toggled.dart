// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The can_invite_users permission of a supergroup chat was toggled
@immutable
class ChatEventInvitesToggled extends ChatEventAction {
  const ChatEventInvitesToggled({
    required this.canInviteUsers,
  });

  /// [canInviteUsers] New value of can_invite_users permission
  final bool canInviteUsers;

  static const String constructor = 'chatEventInvitesToggled';

  static ChatEventInvitesToggled? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventInvitesToggled(
      canInviteUsers: (json['can_invite_users'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'can_invite_users': canInviteUsers,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventInvitesToggled &&
          const DeepCollectionEquality()
              .equals(other.canInviteUsers, canInviteUsers));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(canInviteUsers)]);
}
