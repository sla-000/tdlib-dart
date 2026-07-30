// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a gift auction
@immutable
class LinkPreviewTypeGiftAuction extends LinkPreviewType {
  const LinkPreviewTypeGiftAuction({
    required this.gift,
    required this.auctionEndDate,
  });

  /// [gift] The gift
  final Gift gift;

  /// [auctionEndDate] Point in time (Unix timestamp) when the auction will be
  /// ended
  final int auctionEndDate;

  static const String constructor = 'linkPreviewTypeGiftAuction';

  static LinkPreviewTypeGiftAuction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeGiftAuction(
      gift: Gift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      auctionEndDate: json['auction_end_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift': gift.toJson(),
        'auction_end_date': auctionEndDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LinkPreviewTypeGiftAuction &&
          const DeepCollectionEquality().equals(other.gift, gift) &&
          const DeepCollectionEquality()
              .equals(other.auctionEndDate, auctionEndDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(gift),
        const DeepCollectionEquality().hash(auctionEndDate)
      ]);
}
