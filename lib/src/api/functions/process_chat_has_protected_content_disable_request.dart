import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
