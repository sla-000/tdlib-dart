// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes resale price of a unique gift owned by the current user
/// Returns [Ok]
@immutable
class SetGiftResalePrice extends TdFunction {
  const SetGiftResalePrice({
    required this.receivedGiftId,
    this.price,
  });

  /// [receivedGiftId] Identifier of the unique gift
  final String receivedGiftId;

  /// [price] The new price for the unique gift; pass null to disallow gift
  /// resale. The current user will receive
  /// getOption("gift_resale_star_earnings_per_mille") Telegram Stars for each
  /// 1000 Telegram Stars paid for the gift if the gift price is in Telegram
  /// Stars or getOption("gift_resale_gram_earnings_per_mille") TON Grams for
  /// each 1000 Grams paid for the gift if the gift price is in Grams
  final GiftResalePrice? price;

  static const String constructor = 'setGiftResalePrice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'received_gift_id': receivedGiftId,
        'price': price?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetGiftResalePrice &&
          const DeepCollectionEquality()
              .equals(other.receivedGiftId, receivedGiftId) &&
          const DeepCollectionEquality().equals(other.price, price));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(receivedGiftId),
        const DeepCollectionEquality().hash(price)
      ]);
}
