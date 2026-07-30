// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes all recent reactions added by the specified sender in a chat.
/// Supported only for basic groups and supergroups; requires
/// can_delete_messages administrator right
/// Returns [Ok]
@immutable
class DeleteAllRecentMessageReactionsFromSender extends TdFunction {
  const DeleteAllRecentMessageReactionsFromSender({
    required this.chatId,
    required this.senderId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [senderId] Identifier of the sender of reactions to delete
  final MessageSender senderId;

  static const String constructor = 'deleteAllRecentMessageReactionsFromSender';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'sender_id': senderId.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DeleteAllRecentMessageReactionsFromSender &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.senderId, senderId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(senderId)
      ]);
}
