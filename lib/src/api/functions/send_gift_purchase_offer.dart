import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends an offer to purchase an upgraded gift
/// Returns [Ok]
@immutable
class SendGiftPurchaseOffer extends TdFunction {
  const SendGiftPurchaseOffer({
    required this.ownerId,
    required this.giftName,
    required this.price,
    required this.duration,
    required this.paidMessageStarCount,
  });

  /// [ownerId] Identifier of the user or the channel chat that currently owns
  /// the gift and will receive the offer
  final MessageSender ownerId;

  /// [giftName] Name of the upgraded gift
  final String giftName;

  /// [price] The price that the user agreed to pay for the gift
  final GiftResalePrice price;

  /// [duration] Duration of the offer, in seconds; must be one of 21600, 43200,
  /// 86400, 129600, 172800, or 259200. Can also be 120 if Telegram test
  /// environment is used
  final int duration;

  /// [paidMessageStarCount] The number of Telegram Stars the user agreed to pay
  /// additionally for sending of the offer message to the current gift owner;
  /// pass userFullInfo.outgoing_paid_message_star_count for users and 0
  /// otherwise
  final int paidMessageStarCount;

  static const String constructor = 'sendGiftPurchaseOffer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'gift_name': giftName,
        'price': price.toJson(),
        'duration': duration,
        'paid_message_star_count': paidMessageStarCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
