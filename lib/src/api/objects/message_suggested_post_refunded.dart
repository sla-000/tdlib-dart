import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A suggested post was refunded
@immutable
class MessageSuggestedPostRefunded extends MessageContent {
  const MessageSuggestedPostRefunded({
    required this.suggestedPostMessageId,
    required this.reason,
  });

  /// [suggestedPostMessageId] Identifier of the message with the suggested
  /// post; may be 0 or an identifier of a deleted message
  final int suggestedPostMessageId;

  /// [reason] Reason of the refund
  final SuggestedPostRefundReason reason;

  static const String constructor = 'messageSuggestedPostRefunded';

  static MessageSuggestedPostRefunded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSuggestedPostRefunded(
      suggestedPostMessageId: json['suggested_post_message_id'] as int,
      reason: SuggestedPostRefundReason.fromJson(
          json['reason'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'suggested_post_message_id': suggestedPostMessageId,
        'reason': reason.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
