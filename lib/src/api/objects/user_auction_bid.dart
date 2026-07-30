// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a bid of the current user in an auction
@immutable
class UserAuctionBid extends TdObject {
  const UserAuctionBid({
    required this.starCount,
    required this.bidDate,
    required this.nextBidStarCount,
    required this.ownerId,
    required this.wasReturned,
  });

  /// [starCount] The number of Telegram Stars that were put in the bid
  final int starCount;

  /// [bidDate] Point in time (Unix timestamp) when the bid was made
  final int bidDate;

  /// [nextBidStarCount] The minimum number of Telegram Stars that can be put
  /// for the next bid
  final int nextBidStarCount;

  /// [ownerId] Identifier of the user or the chat that will receive the
  /// auctioned item. If the auction is opened in context of another user or
  /// chat, then a warning is supposed to be shown to the current user
  final MessageSender ownerId;

  /// [wasReturned] True, if the bid was returned to the user, because it was
  /// outbid and can't win anymore
  final bool wasReturned;

  static const String constructor = 'userAuctionBid';

  static UserAuctionBid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserAuctionBid(
      starCount: json['star_count'] as int,
      bidDate: json['bid_date'] as int,
      nextBidStarCount: json['next_bid_star_count'] as int,
      ownerId:
          MessageSender.fromJson(json['owner_id'] as Map<String, dynamic>?)!,
      wasReturned: json['was_returned'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        'bid_date': bidDate,
        'next_bid_star_count': nextBidStarCount,
        'owner_id': ownerId.toJson(),
        'was_returned': wasReturned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UserAuctionBid &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality().equals(other.bidDate, bidDate) &&
          const DeepCollectionEquality()
              .equals(other.nextBidStarCount, nextBidStarCount) &&
          const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
          const DeepCollectionEquality()
              .equals(other.wasReturned, wasReturned));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(bidDate),
        const DeepCollectionEquality().hash(nextBidStarCount),
        const DeepCollectionEquality().hash(ownerId),
        const DeepCollectionEquality().hash(wasReturned)
      ]);
}
