import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An offer to purchase an upgraded gift was sent or received
@immutable
class MessageUpgradedGiftPurchaseOffer extends MessageContent {
  const MessageUpgradedGiftPurchaseOffer({
    required this.gift,
    required this.state,
    required this.price,
    required this.expirationDate,
  });

  /// [gift] The gift
  final UpgradedGift gift;

  /// [state] State of the offer
  final GiftPurchaseOfferState state;

  /// [price] The proposed price
  final GiftResalePrice price;

  /// [expirationDate] Point in time (Unix timestamp) when the offer will expire
  /// or has expired
  final int expirationDate;

  static const String constructor = 'messageUpgradedGiftPurchaseOffer';

  static MessageUpgradedGiftPurchaseOffer? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageUpgradedGiftPurchaseOffer(
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      state: GiftPurchaseOfferState.fromJson(
          json['state'] as Map<String, dynamic>?)!,
      price: GiftResalePrice.fromJson(json['price'] as Map<String, dynamic>?)!,
      expirationDate: json['expiration_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift': gift.toJson(),
        'state': state.toJson(),
        'price': price.toJson(),
        'expiration_date': expirationDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
