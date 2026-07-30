import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
