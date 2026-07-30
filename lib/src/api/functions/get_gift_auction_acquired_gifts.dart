// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the gifts that were acquired by the current user on a gift auction
/// Returns [GiftAuctionAcquiredGifts]
@immutable
class GetGiftAuctionAcquiredGifts extends TdFunction {
  const GetGiftAuctionAcquiredGifts({
    required this.giftId,
  });

  /// [giftId] Identifier of the auctioned gift
  final int giftId;

  static const String constructor = 'getGiftAuctionAcquiredGifts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift_id': giftId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetGiftAuctionAcquiredGifts &&
          const DeepCollectionEquality().equals(other.giftId, giftId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(giftId)]);
}
