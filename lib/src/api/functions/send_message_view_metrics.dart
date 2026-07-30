import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib about details of a message view by the user from a chat, a
/// message thread or a forum topic history. The method must be called if the
/// message wasn't seen for more than 300 milliseconds, the viewport was
/// destroyed, or the total view duration exceeded 5 minutes
/// Returns [Ok]
@immutable
class SendMessageViewMetrics extends TdFunction {
  const SendMessageViewMetrics({
    required this.chatId,
    required this.messageId,
    required this.timeInViewMs,
    required this.activeTimeInViewMs,
    required this.heightToViewportRatioPerMille,
    required this.seenRangeRatioPerMille,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] The identifier of the message being viewed
  final int messageId;

  /// [timeInViewMs] The amount of time the message was seen by at least 1
  /// pixel; in milliseconds
  final int timeInViewMs;

  /// [activeTimeInViewMs] The amount of time the message was seen by at least 1
  /// pixel within 15 seconds after any action from the user; in milliseconds
  final int activeTimeInViewMs;

  /// [heightToViewportRatioPerMille] The ratio of the post height to the
  /// viewport height in 1/1000 fractions
  final int heightToViewportRatioPerMille;

  /// [seenRangeRatioPerMille] The ratio of the viewed post height to the full
  /// post height in 1/1000 fractions; 0-1000
  final int seenRangeRatioPerMille;

  static const String constructor = 'sendMessageViewMetrics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'time_in_view_ms': timeInViewMs,
        'active_time_in_view_ms': activeTimeInViewMs,
        'height_to_viewport_ratio_per_mille': heightToViewportRatioPerMille,
        'seen_range_ratio_per_mille': seenRangeRatioPerMille,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
