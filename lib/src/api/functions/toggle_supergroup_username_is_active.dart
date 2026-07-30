// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes active state for a username of a supergroup or channel, requires
/// owner privileges in the supergroup or channel. The editable username can't
/// be disabled. May return an error with a message
/// "USERNAMES_ACTIVE_TOO_MUCH" if the maximum number of active usernames has
/// been reached
/// Returns [Ok]
@immutable
class ToggleSupergroupUsernameIsActive extends TdFunction {
  const ToggleSupergroupUsernameIsActive({
    required this.supergroupId,
    required this.username,
    required this.isActive,
  });

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  /// [username] The username to change
  final String username;

  /// [isActive] Pass true to activate the username; pass false to disable it
  final bool isActive;

  static const String constructor = 'toggleSupergroupUsernameIsActive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'username': username,
        'is_active': isActive,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ToggleSupergroupUsernameIsActive &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId) &&
          const DeepCollectionEquality().equals(other.username, username) &&
          const DeepCollectionEquality().equals(other.isActive, isActive));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(supergroupId),
        const DeepCollectionEquality().hash(username),
        const DeepCollectionEquality().hash(isActive)
      ]);
}
