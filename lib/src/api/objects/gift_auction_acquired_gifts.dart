// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a list of gifts that were acquired by the current user on an
/// auction
@immutable
class GiftAuctionAcquiredGifts extends TdObject {
  const GiftAuctionAcquiredGifts({
    required this.gifts,
  });

  /// [gifts] The list of acquired gifts
  final List<GiftAuctionAcquiredGift> gifts;

  static const String constructor = 'giftAuctionAcquiredGifts';

  static GiftAuctionAcquiredGifts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftAuctionAcquiredGifts(
      gifts: List<GiftAuctionAcquiredGift>.from(((json['gifts']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) =>
              GiftAuctionAcquiredGift.fromJson(item as Map<String, dynamic>?))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gifts': gifts.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftAuctionAcquiredGifts &&
          const DeepCollectionEquality().equals(other.gifts, gifts));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(gifts)]);
}
