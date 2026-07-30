// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes active state for a username of a bot. The editable username can be
/// disabled only if there are other active usernames. May return an error
/// with a message "USERNAMES_ACTIVE_TOO_MUCH" if the maximum number of active
/// usernames has been reached. Can be called only if
/// userTypeBot.can_be_edited == true
/// Returns [Ok]
@immutable
class ToggleBotUsernameIsActive extends TdFunction {
  const ToggleBotUsernameIsActive({
    required this.botUserId,
    required this.username,
    required this.isActive,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [username] The username to change
  final String username;

  /// [isActive] Pass true to activate the username; pass false to disable it
  final bool isActive;

  static const String constructor = 'toggleBotUsernameIsActive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'username': username,
        'is_active': isActive,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleBotUsernameIsActive &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality().equals(other.username, username) &&
          const DeepCollectionEquality().equals(other.isActive, isActive));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(username),
        const DeepCollectionEquality().hash(isActive)
      ]);
}
