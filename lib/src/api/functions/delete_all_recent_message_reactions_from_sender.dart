import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
