// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Processes request to disable has_protected_content in a chat
/// Returns [Ok]
@immutable
class ProcessChatHasProtectedContentDisableRequest extends TdFunction {
  const ProcessChatHasProtectedContentDisableRequest({
    required this.chatId,
    required this.requestMessageId,
    required this.approve,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [requestMessageId] Identifier of the message with the request. The message
  /// must be incoming and has content of the type
  /// messageChatHasProtectedContentDisableRequested
  final int requestMessageId;

  /// [approve] Pass true to approve the request; pass false to reject the
  /// request
  final bool approve;

  static const String constructor =
      'processChatHasProtectedContentDisableRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'request_message_id': requestMessageId,
        'approve': approve,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ProcessChatHasProtectedContentDisableRequest &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.requestMessageId, requestMessageId) &&
          const DeepCollectionEquality().equals(other.approve, approve));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(requestMessageId),
        const DeepCollectionEquality().hash(approve)
      ]);
}
