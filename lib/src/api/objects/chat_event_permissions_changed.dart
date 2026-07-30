// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat permissions were changed
@immutable
class ChatEventPermissionsChanged extends ChatEventAction {
  const ChatEventPermissionsChanged({
    required this.oldPermissions,
    required this.newPermissions,
  });

  /// [oldPermissions] Previous chat permissions
  final ChatPermissions oldPermissions;

  /// [newPermissions] New chat permissions
  final ChatPermissions newPermissions;

  static const String constructor = 'chatEventPermissionsChanged';

  static ChatEventPermissionsChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventPermissionsChanged(
      oldPermissions: ChatPermissions.fromJson(
          json['old_permissions'] as Map<String, dynamic>?)!,
      newPermissions: ChatPermissions.fromJson(
          json['new_permissions'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_permissions': oldPermissions.toJson(),
        'new_permissions': newPermissions.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventPermissionsChanged &&
          const DeepCollectionEquality()
              .equals(other.oldPermissions, oldPermissions) &&
          const DeepCollectionEquality()
              .equals(other.newPermissions, newPermissions));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(oldPermissions),
        const DeepCollectionEquality().hash(newPermissions)
      ]);
}
