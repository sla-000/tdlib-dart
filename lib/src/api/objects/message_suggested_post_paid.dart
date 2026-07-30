import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A suggested post was published for
/// getOption("suggested_post_lifetime_min") seconds and payment for the post
/// was received
@immutable
class MessageSuggestedPostPaid extends MessageContent {
  const MessageSuggestedPostPaid({
    required this.suggestedPostMessageId,
    required this.starAmount,
    required this.gramAmount,
  });

  /// [suggestedPostMessageId] Identifier of the message with the suggested
  /// post; may be 0 or an identifier of a deleted message
  final int suggestedPostMessageId;

  /// [starAmount] The amount of received Telegram Stars
  final StarAmount starAmount;

  /// [gramAmount] The amount of received TON Grams; in the smallest units of
  /// the cryptocurrency
  final int gramAmount;

  static const String constructor = 'messageSuggestedPostPaid';

  static MessageSuggestedPostPaid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSuggestedPostPaid(
      suggestedPostMessageId: json['suggested_post_message_id'] as int,
      starAmount:
          StarAmount.fromJson(json['star_amount'] as Map<String, dynamic>?)!,
      gramAmount: json['gram_amount'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'suggested_post_message_id': suggestedPostMessageId,
        'star_amount': starAmount.toJson(),
        'gram_amount': gramAmount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
