import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Declines a suggested post in a channel direct messages chat
/// Returns [Ok]
@immutable
class DeclineSuggestedPost extends TdFunction {
  const DeclineSuggestedPost({
    required this.chatId,
    required this.messageId,
    required this.comment,
  });

  /// [chatId] Chat identifier of the channel direct messages chat
  final int chatId;

  /// [messageId] Identifier of the message with the suggested post. Use
  /// messageProperties.can_be_declined to check whether the suggested post can
  /// be declined
  final int messageId;

  /// [comment] Comment for the creator of the suggested post; 0-128 characters
  final String comment;

  static const String constructor = 'declineSuggestedPost';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'comment': comment,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
