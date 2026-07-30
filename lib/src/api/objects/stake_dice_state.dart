// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes state of the stake dice
@immutable
class StakeDiceState extends TdObject {
  const StakeDiceState({
    required this.stateHash,
    required this.stakeGramAmount,
    required this.suggestedStakeGramAmounts,
    required this.currentStreak,
    required this.prizePerMille,
    required this.streakPrizePerMille,
  });

  /// [stateHash] Hash of the state to use for sending the next dice; may be
  /// empty if the stake dice can't be sent by the current user
  final String stateHash;

  /// [stakeGramAmount] The amount of TON Grams staked in the previous roll; in
  /// the smallest units of the currency
  final int stakeGramAmount;

  /// [suggestedStakeGramAmounts] The amounts of Grams that are suggested to be
  /// staked; in the smallest units of the currency
  final List<int> suggestedStakeGramAmounts;

  /// [currentStreak] The number of rolled sixes towards the streak; 0-2
  final int currentStreak;

  /// [prizePerMille] The number of Grams received by the user for each 1000
  /// Grams staked if the dice outcome is 1-6 correspondingly; may be empty if
  /// the stake dice can't be sent by the current user
  final List<int> prizePerMille;

  /// [streakPrizePerMille] The number of Grams received by the user for each
  /// 1000 Grams staked if the dice outcome is 6 three times in a row with the
  /// same stake
  final int streakPrizePerMille;

  static const String constructor = 'stakeDiceState';

  static StakeDiceState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StakeDiceState(
      stateHash: (json['state_hash'] as String?) ?? '',
      stakeGramAmount: (json['stake_gram_amount'] as int?) ?? 0,
      suggestedStakeGramAmounts: List<int>.from(
          ((json['suggested_stake_gram_amounts'] as List<dynamic>?) ??
                  <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
      currentStreak: (json['current_streak'] as int?) ?? 0,
      prizePerMille: List<int>.from(
          ((json['prize_per_mille'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
      streakPrizePerMille: (json['streak_prize_per_mille'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'state_hash': stateHash,
        'stake_gram_amount': stakeGramAmount,
        'suggested_stake_gram_amounts':
            suggestedStakeGramAmounts.map((item) => item).toList(),
        'current_streak': currentStreak,
        'prize_per_mille': prizePerMille.map((item) => item).toList(),
        'streak_prize_per_mille': streakPrizePerMille,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StakeDiceState &&
          const DeepCollectionEquality().equals(other.stateHash, stateHash) &&
          const DeepCollectionEquality()
              .equals(other.stakeGramAmount, stakeGramAmount) &&
          const DeepCollectionEquality().equals(
              other.suggestedStakeGramAmounts, suggestedStakeGramAmounts) &&
          const DeepCollectionEquality()
              .equals(other.currentStreak, currentStreak) &&
          const DeepCollectionEquality()
              .equals(other.prizePerMille, prizePerMille) &&
          const DeepCollectionEquality()
              .equals(other.streakPrizePerMille, streakPrizePerMille));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(stateHash),
        const DeepCollectionEquality().hash(stakeGramAmount),
        const DeepCollectionEquality().hash(suggestedStakeGramAmounts),
        const DeepCollectionEquality().hash(currentStreak),
        const DeepCollectionEquality().hash(prizePerMille),
        const DeepCollectionEquality().hash(streakPrizePerMille)
      ]);
}
