// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a completed giveaway
@immutable
class GiveawayInfoCompleted extends GiveawayInfo {
  const GiveawayInfoCompleted({
    required this.creationDate,
    required this.actualWinnersSelectionDate,
    required this.wasRefunded,
    required this.isWinner,
    required this.winnerCount,
    required this.activationCount,
    required this.giftCode,
    required this.wonStarCount,
  });

  /// [creationDate] Point in time (Unix timestamp) when the giveaway was
  /// created
  final int creationDate;

  /// [actualWinnersSelectionDate] Point in time (Unix timestamp) when the
  /// winners were selected. May be bigger than winners selection date specified
  /// in parameters of the giveaway
  final int actualWinnersSelectionDate;

  /// [wasRefunded] True, if the giveaway was canceled and was fully refunded
  final bool wasRefunded;

  /// [isWinner] True, if the current user is a winner of the giveaway
  final bool isWinner;

  /// [winnerCount] Number of winners in the giveaway
  final int winnerCount;

  /// [activationCount] Number of winners, which activated their gift codes; for
  /// Telegram Premium giveaways only
  final int activationCount;

  /// [giftCode] Telegram Premium gift code that was received by the current
  /// user; empty if the user isn't a winner in the giveaway or the giveaway
  /// isn't a Telegram Premium giveaway
  final String giftCode;

  /// [wonStarCount] The Telegram Star amount won by the current user; 0 if the
  /// user isn't a winner in the giveaway or the giveaway isn't a Telegram Star
  /// giveaway
  final int wonStarCount;

  static const String constructor = 'giveawayInfoCompleted';

  static GiveawayInfoCompleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiveawayInfoCompleted(
      creationDate: (json['creation_date'] as int?) ?? 0,
      actualWinnersSelectionDate:
          (json['actual_winners_selection_date'] as int?) ?? 0,
      wasRefunded: (json['was_refunded'] as bool?) ?? false,
      isWinner: (json['is_winner'] as bool?) ?? false,
      winnerCount: (json['winner_count'] as int?) ?? 0,
      activationCount: (json['activation_count'] as int?) ?? 0,
      giftCode: (json['gift_code'] as String?) ?? '',
      wonStarCount: (json['won_star_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'creation_date': creationDate,
        'actual_winners_selection_date': actualWinnersSelectionDate,
        'was_refunded': wasRefunded,
        'is_winner': isWinner,
        'winner_count': winnerCount,
        'activation_count': activationCount,
        'gift_code': giftCode,
        'won_star_count': wonStarCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiveawayInfoCompleted &&
          const DeepCollectionEquality()
              .equals(other.creationDate, creationDate) &&
          const DeepCollectionEquality().equals(
              other.actualWinnersSelectionDate, actualWinnersSelectionDate) &&
          const DeepCollectionEquality()
              .equals(other.wasRefunded, wasRefunded) &&
          const DeepCollectionEquality().equals(other.isWinner, isWinner) &&
          const DeepCollectionEquality()
              .equals(other.winnerCount, winnerCount) &&
          const DeepCollectionEquality()
              .equals(other.activationCount, activationCount) &&
          const DeepCollectionEquality().equals(other.giftCode, giftCode) &&
          const DeepCollectionEquality()
              .equals(other.wonStarCount, wonStarCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(creationDate),
        const DeepCollectionEquality().hash(actualWinnersSelectionDate),
        const DeepCollectionEquality().hash(wasRefunded),
        const DeepCollectionEquality().hash(isWinner),
        const DeepCollectionEquality().hash(winnerCount),
        const DeepCollectionEquality().hash(activationCount),
        const DeepCollectionEquality().hash(giftCode),
        const DeepCollectionEquality().hash(wonStarCount)
      ]);
}
