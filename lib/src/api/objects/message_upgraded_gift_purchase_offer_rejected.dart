import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An offer to purchase a gift was rejected or expired
@immutable
class MessageUpgradedGiftPurchaseOfferRejected extends MessageContent {
  const MessageUpgradedGiftPurchaseOfferRejected({
    required this.gift,
    required this.price,
    required this.offerMessageId,
    required this.wasExpired,
  });

  /// [gift] The gift
  final UpgradedGift gift;

  /// [price] The proposed price
  final GiftResalePrice price;

  /// [offerMessageId] Identifier of the message with purchase offer which was
  /// rejected or expired; may be 0 or an identifier of a deleted message
  final int offerMessageId;

  /// [wasExpired] True, if the offer has expired; otherwise, the offer was
  /// explicitly rejected
  final bool wasExpired;

  static const String constructor = 'messageUpgradedGiftPurchaseOfferRejected';

  static MessageUpgradedGiftPurchaseOfferRejected? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageUpgradedGiftPurchaseOfferRejected(
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      price: GiftResalePrice.fromJson(json['price'] as Map<String, dynamic>?)!,
      offerMessageId: json['offer_message_id'] as int,
      wasExpired: json['was_expired'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift': gift.toJson(),
        'price': price.toJson(),
        'offer_message_id': offerMessageId,
        'was_expired': wasExpired,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
