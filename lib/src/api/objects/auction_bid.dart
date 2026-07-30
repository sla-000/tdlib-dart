// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a bid in an auction
@immutable
class AuctionBid extends TdObject {
  const AuctionBid({
    required this.starCount,
    required this.bidDate,
    required this.position,
  });

  /// [starCount] The number of Telegram Stars that were put in the bid
  final int starCount;

  /// [bidDate] Point in time (Unix timestamp) when the bid was made
  final int bidDate;

  /// [position] Position of the bid in the list of all bids
  final int position;

  static const String constructor = 'auctionBid';

  static AuctionBid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuctionBid(
      starCount: json['star_count'] as int,
      bidDate: json['bid_date'] as int,
      position: json['position'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        'bid_date': bidDate,
        'position': position,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AuctionBid &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality().equals(other.bidDate, bidDate) &&
          const DeepCollectionEquality().equals(other.position, position));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(bidDate),
        const DeepCollectionEquality().hash(position)
      ]);
}
