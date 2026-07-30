import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
      gifts: List<GiftAuctionAcquiredGift>.from(
          ((json['gifts'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => GiftAuctionAcquiredGift.fromJson(item))
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
