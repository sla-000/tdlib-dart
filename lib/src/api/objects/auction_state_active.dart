import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an ongoing or scheduled auction
@immutable
class AuctionStateActive extends AuctionState {
  const AuctionStateActive({
    required this.startDate,
    required this.endDate,
    required this.minBid,
    required this.bidLevels,
    required this.topBidderUserIds,
    required this.rounds,
    required this.currentRoundEndDate,
    required this.currentRoundNumber,
    required this.totalRoundCount,
    required this.distributedItemCount,
    required this.leftItemCount,
    required this.acquiredItemCount,
    this.userBid,
  });

  /// [startDate] Point in time (Unix timestamp) when the auction started or
  /// will start
  final int startDate;

  /// [endDate] Point in time (Unix timestamp) when the auction will be ended
  final int endDate;

  /// [minBid] The minimum possible bid in the auction in Telegram Stars
  final int minBid;

  /// [bidLevels] A sparse list of bids that were made in the auction
  final List<AuctionBid> bidLevels;

  /// [topBidderUserIds] User identifiers of at most 3 users with the biggest
  /// bids
  final List<int> topBidderUserIds;

  /// [rounds] Rounds of the auction in which their duration or extension rules
  /// are changed
  final List<AuctionRound> rounds;

  /// [currentRoundEndDate] Point in time (Unix timestamp) when the current
  /// round will end
  final int currentRoundEndDate;

  /// [currentRoundNumber] 1-based number of the current round
  final int currentRoundNumber;

  /// [totalRoundCount] The total number of rounds
  final int totalRoundCount;

  /// [distributedItemCount] The number of items that were purchased on the
  /// auction by all users
  final int distributedItemCount;

  /// [leftItemCount] The number of items that have to be distributed on the
  /// auction
  final int leftItemCount;

  /// [acquiredItemCount] The number of items that were purchased by the current
  /// user on the auction
  final int acquiredItemCount;

  /// [userBid] Bid of the current user in the auction; may be null if none
  final UserAuctionBid? userBid;

  static const String constructor = 'auctionStateActive';

  static AuctionStateActive? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuctionStateActive(
      startDate: json['start_date'] as int,
      endDate: json['end_date'] as int,
      minBid: json['min_bid'] as int,
      bidLevels: List<AuctionBid>.from(
          ((json['bid_levels'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => AuctionBid.fromJson(item))
              .toList()),
      topBidderUserIds: List<int>.from(
          ((json['top_bidder_user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      rounds: List<AuctionRound>.from(
          ((json['rounds'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => AuctionRound.fromJson(item))
              .toList()),
      currentRoundEndDate: json['current_round_end_date'] as int,
      currentRoundNumber: json['current_round_number'] as int,
      totalRoundCount: json['total_round_count'] as int,
      distributedItemCount: json['distributed_item_count'] as int,
      leftItemCount: json['left_item_count'] as int,
      acquiredItemCount: json['acquired_item_count'] as int,
      userBid:
          UserAuctionBid.fromJson(json['user_bid'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'start_date': startDate,
        'end_date': endDate,
        'min_bid': minBid,
        'bid_levels': bidLevels.map((item) => item.toJson()).toList(),
        'top_bidder_user_ids': topBidderUserIds.map((item) => item).toList(),
        'rounds': rounds.map((item) => item.toJson()).toList(),
        'current_round_end_date': currentRoundEndDate,
        'current_round_number': currentRoundNumber,
        'total_round_count': totalRoundCount,
        'distributed_item_count': distributedItemCount,
        'left_item_count': leftItemCount,
        'acquired_item_count': acquiredItemCount,
        'user_bid': userBid?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
