// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A giveaway without public winners has been completed for the chat
@immutable
class MessageGiveawayCompleted extends MessageContent {
  const MessageGiveawayCompleted({
    required this.giveawayMessageId,
    required this.winnerCount,
    required this.isStarGiveaway,
    required this.unclaimedPrizeCount,
  });

  /// [giveawayMessageId] Identifier of the message with the giveaway; may be 0
  /// or an identifier of a deleted message
  final int giveawayMessageId;

  /// [winnerCount] Number of winners in the giveaway
  final int winnerCount;

  /// [isStarGiveaway] True, if the giveaway is a Telegram Star giveaway
  final bool isStarGiveaway;

  /// [unclaimedPrizeCount] Number of undistributed prizes; for Telegram Premium
  /// giveaways only
  final int unclaimedPrizeCount;

  static const String constructor = 'messageGiveawayCompleted';

  static MessageGiveawayCompleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiveawayCompleted(
      giveawayMessageId: json['giveaway_message_id'] as int,
      winnerCount: json['winner_count'] as int,
      isStarGiveaway: json['is_star_giveaway'] as bool,
      unclaimedPrizeCount: json['unclaimed_prize_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'giveaway_message_id': giveawayMessageId,
        'winner_count': winnerCount,
        'is_star_giveaway': isStarGiveaway,
        'unclaimed_prize_count': unclaimedPrizeCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageGiveawayCompleted &&
          const DeepCollectionEquality()
              .equals(other.giveawayMessageId, giveawayMessageId) &&
          const DeepCollectionEquality()
              .equals(other.winnerCount, winnerCount) &&
          const DeepCollectionEquality()
              .equals(other.isStarGiveaway, isStarGiveaway) &&
          const DeepCollectionEquality()
              .equals(other.unclaimedPrizeCount, unclaimedPrizeCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(giveawayMessageId),
        const DeepCollectionEquality().hash(winnerCount),
        const DeepCollectionEquality().hash(isStarGiveaway),
        const DeepCollectionEquality().hash(unclaimedPrizeCount)
      ]);
}
