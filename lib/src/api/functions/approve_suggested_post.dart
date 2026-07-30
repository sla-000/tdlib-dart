import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Approves a suggested post in a channel direct messages chat
/// Returns [Ok]
@immutable
class ApproveSuggestedPost extends TdFunction {
  const ApproveSuggestedPost({
    required this.chatId,
    required this.messageId,
    required this.sendDate,
  });

  /// [chatId] Chat identifier of the channel direct messages chat
  final int chatId;

  /// [messageId] Identifier of the message with the suggested post. Use
  /// messageProperties.can_be_approved to check whether the suggested post can
  /// be approved
  final int messageId;

  /// [sendDate] Point in time (Unix timestamp) when the post is expected to be
  /// published; pass 0 if the date has already been chosen. If specified, then
  /// the date must be in the future, but at most
  /// getOption("suggested_post_send_delay_max") seconds in the future
  final int sendDate;

  static const String constructor = 'approveSuggestedPost';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'send_date': sendDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
