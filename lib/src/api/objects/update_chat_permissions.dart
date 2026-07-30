// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Chat permissions were changed
@immutable
class UpdateChatPermissions extends Update {
  const UpdateChatPermissions({
    required this.chatId,
    required this.permissions,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [permissions] The new chat permissions
  final ChatPermissions permissions;

  static const String constructor = 'updateChatPermissions';

  static UpdateChatPermissions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatPermissions(
      chatId: (json['chat_id'] as int?) ?? 0,
      permissions: ChatPermissions.fromJson(
          json['permissions'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'permissions': permissions.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatPermissions &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.permissions, permissions));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(permissions)
      ]);
}
