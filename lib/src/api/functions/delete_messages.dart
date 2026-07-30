// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes messages
/// Returns [Ok]
@immutable
class DeleteMessages extends TdFunction {
  const DeleteMessages({
    required this.chatId,
    required this.messageIds,
    required this.revoke,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageIds] Identifiers of the messages to be deleted. Use
  /// messageProperties.can_be_deleted_only_for_self and
  /// messageProperties.can_be_deleted_for_all_users to get suitable messages
  final List<int> messageIds;

  /// [revoke] Pass true to delete messages for all chat members. Always true
  /// for supergroups, channels and secret chats
  final bool revoke;

  static const String constructor = 'deleteMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_ids': messageIds.map((item) => item).toList(),
        'revoke': revoke,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteMessages &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.messageIds, messageIds) &&
          const DeepCollectionEquality().equals(other.revoke, revoke));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(messageIds),
        const DeepCollectionEquality().hash(revoke)
      ]);
}
