// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The message failed to be sent
@immutable
class MessageSendingStateFailed extends MessageSendingState {
  const MessageSendingStateFailed({
    required this.error,
    required this.canRetry,
    required this.needAnotherSender,
    required this.needAnotherReplyQuote,
    required this.needDropReply,
    required this.requiredPaidMessageStarCount,
    required this.retryAfter,
  });

  /// [error] The cause of the message sending failure
  final TdError error;

  /// [canRetry] True, if the message can be re-sent using resendMessages or
  /// readdQuickReplyShortcutMessages
  final bool canRetry;

  /// [needAnotherSender] True, if the message can be re-sent only on behalf of
  /// a different sender
  final bool needAnotherSender;

  /// [needAnotherReplyQuote] True, if the message can be re-sent only if
  /// another quote is chosen in the message that is replied by the given
  /// message
  final bool needAnotherReplyQuote;

  /// [needDropReply] True, if the message can be re-sent only if the message to
  /// be replied is removed. This will be done automatically by resendMessages
  final bool needDropReply;

  /// [requiredPaidMessageStarCount] The number of Telegram Stars that must be
  /// paid to send the message; 0 if the current amount is correct
  final int requiredPaidMessageStarCount;

  /// [retryAfter] Time left before the message can be re-sent, in seconds. No
  /// update is sent when this field changes
  final double retryAfter;

  static const String constructor = 'messageSendingStateFailed';

  static MessageSendingStateFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSendingStateFailed(
      error: TdError.fromJson(json['error'] as Map<String, dynamic>?)!,
      canRetry: (json['can_retry'] as bool?) ?? false,
      needAnotherSender: (json['need_another_sender'] as bool?) ?? false,
      needAnotherReplyQuote:
          (json['need_another_reply_quote'] as bool?) ?? false,
      needDropReply: (json['need_drop_reply'] as bool?) ?? false,
      requiredPaidMessageStarCount:
          (json['required_paid_message_star_count'] as int?) ?? 0,
      retryAfter: (json['retry_after'] as num?)?.toDouble() ?? 0.0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'error': error.toJson(),
        'can_retry': canRetry,
        'need_another_sender': needAnotherSender,
        'need_another_reply_quote': needAnotherReplyQuote,
        'need_drop_reply': needDropReply,
        'required_paid_message_star_count': requiredPaidMessageStarCount,
        'retry_after': retryAfter,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageSendingStateFailed &&
          const DeepCollectionEquality().equals(other.error, error) &&
          const DeepCollectionEquality().equals(other.canRetry, canRetry) &&
          const DeepCollectionEquality()
              .equals(other.needAnotherSender, needAnotherSender) &&
          const DeepCollectionEquality()
              .equals(other.needAnotherReplyQuote, needAnotherReplyQuote) &&
          const DeepCollectionEquality()
              .equals(other.needDropReply, needDropReply) &&
          const DeepCollectionEquality().equals(
              other.requiredPaidMessageStarCount,
              requiredPaidMessageStarCount) &&
          const DeepCollectionEquality().equals(other.retryAfter, retryAfter));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(error),
        const DeepCollectionEquality().hash(canRetry),
        const DeepCollectionEquality().hash(needAnotherSender),
        const DeepCollectionEquality().hash(needAnotherReplyQuote),
        const DeepCollectionEquality().hash(needDropReply),
        const DeepCollectionEquality().hash(requiredPaidMessageStarCount),
        const DeepCollectionEquality().hash(retryAfter)
      ]);
}
