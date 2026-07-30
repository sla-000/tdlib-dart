// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageUpgradedGiftPurchaseOffer &&
          const DeepCollectionEquality().equals(other.gift, gift) &&
          const DeepCollectionEquality().equals(other.state, state) &&
          const DeepCollectionEquality().equals(other.price, price) &&
          const DeepCollectionEquality()
              .equals(other.expirationDate, expirationDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(gift),
        const DeepCollectionEquality().hash(state),
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(expirationDate)
      ]);
}
