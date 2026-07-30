import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes all reactions added by the specified sender on a message
/// Returns [Ok]
@immutable
class DeleteMessageReactionsFromSender extends TdFunction {
  const DeleteMessageReactionsFromSender({
    required this.chatId,
    required this.messageId,
    required this.senderId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Identifier of the message containing the reactions. Use
  /// messageProperties.can_delete_reactions to check whether the method can be
  /// used for a message
  final int messageId;

  /// [senderId] Identifier of the sender of reactions to delete
  final MessageSender senderId;

  static const String constructor = 'deleteMessageReactionsFromSender';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'sender_id': senderId.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
