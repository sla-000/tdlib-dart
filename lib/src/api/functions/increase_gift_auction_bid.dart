// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Increases a bid for an auction gift without changing gift text and
/// receiver
/// Returns [Ok]
@immutable
class IncreaseGiftAuctionBid extends TdFunction {
  const IncreaseGiftAuctionBid({
    required this.giftId,
    required this.starCount,
  });

  /// [giftId] Identifier of the gift to put the bid on
  final int giftId;

  /// [starCount] The number of Telegram Stars to put in the bid
  final int starCount;

  static const String constructor = 'increaseGiftAuctionBid';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift_id': giftId.toString(),
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is IncreaseGiftAuctionBid &&
          const DeepCollectionEquality().equals(other.giftId, giftId) &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(giftId),
        const DeepCollectionEquality().hash(starCount)
      ]);
}
