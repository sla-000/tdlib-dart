// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends an upgraded gift that is available for resale to another user or
/// channel chat; gifts already owned by the current user must be transferred
/// using transferGift and can't be passed to the method
/// Returns [GiftResaleResult]
@immutable
class SendResoldGift extends TdFunction {
  const SendResoldGift({
    required this.giftName,
    required this.ownerId,
    required this.price,
    required this.text,
    required this.isPrivate,
  });

  /// [giftName] Name of the upgraded gift to send
  final String giftName;

  /// [ownerId] Identifier of the user or the channel chat that will receive the
  /// gift
  final MessageSender ownerId;

  /// [price] The price that the user agreed to pay for the gift
  final GiftResalePrice price;

  /// [text] Text to show along with the gift;
  /// 0-getOption("gift_text_length_max") characters. Only Bold, Italic,
  /// Underline, Strikethrough, Spoiler, CustomEmoji, and DateTime entities are
  /// allowed. Must be empty if the receiver enabled paid messages and the price
  /// of the gift is less than the price of a paid message to the user
  final FormattedText text;

  /// [isPrivate] Pass true to show gift text and sender only to the gift
  /// receiver; otherwise, everyone will be able to see them
  final bool isPrivate;

  static const String constructor = 'sendResoldGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift_name': giftName,
        'owner_id': ownerId.toJson(),
        'price': price.toJson(),
        'text': text.toJson(),
        'is_private': isPrivate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SendResoldGift &&
          const DeepCollectionEquality().equals(other.giftName, giftName) &&
          const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
          const DeepCollectionEquality().equals(other.price, price) &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.isPrivate, isPrivate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(giftName),
        const DeepCollectionEquality().hash(ownerId),
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(isPrivate)
      ]);
}
