// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A suggested post was published for
/// getOption("suggested_post_lifetime_min") seconds and payment for the post
/// was received
@immutable
class MessageSuggestedPostPaid extends MessageContent {
  const MessageSuggestedPostPaid({
    required this.suggestedPostMessageId,
    required this.starAmount,
    required this.tonAmount,
  });

  /// [suggestedPostMessageId] Identifier of the message with the suggested
  /// post; may be 0 or an identifier of a deleted message
  final int suggestedPostMessageId;

  /// [starAmount] The amount of received Telegram Stars
  final StarAmount starAmount;

  /// [tonAmount] The amount of received Toncoins; in the smallest units of the
  /// cryptocurrency
  final int tonAmount;

  static const String constructor = 'messageSuggestedPostPaid';

  static MessageSuggestedPostPaid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSuggestedPostPaid(
      suggestedPostMessageId: (json['suggested_post_message_id'] as int?) ?? 0,
      starAmount:
          StarAmount.fromJson(json['star_amount'] as Map<String, dynamic>?)!,
      tonAmount: (json['ton_amount'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'suggested_post_message_id': suggestedPostMessageId,
        'star_amount': starAmount.toJson(),
        'ton_amount': tonAmount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageSuggestedPostPaid &&
          const DeepCollectionEquality()
              .equals(other.suggestedPostMessageId, suggestedPostMessageId) &&
          const DeepCollectionEquality().equals(other.starAmount, starAmount) &&
          const DeepCollectionEquality().equals(other.tonAmount, tonAmount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(suggestedPostMessageId),
        const DeepCollectionEquality().hash(starAmount),
        const DeepCollectionEquality().hash(tonAmount)
      ]);
}
