// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A stake dice message
@immutable
class InputMessageStakeDice extends InputMessageContent {
  const InputMessageStakeDice({
    required this.stateHash,
    required this.stakeToncoinAmount,
    required this.clearDraft,
  });

  /// [stateHash] Hash of the stake dice state. The state hash can be used only
  /// if it was received recently enough. Otherwise, a new state must be
  /// requested using getStakeDiceState
  final String stateHash;

  /// [stakeToncoinAmount] The Toncoin amount that will be staked; in the
  /// smallest units of the currency. Must be in the range
  /// getOption("stake_dice_stake_amount_min")-getOption("stake_dice_stake_amount_max")
  final int stakeToncoinAmount;

  /// [clearDraft] Pass true to delete message draft in the chat
  final bool clearDraft;

  static const String constructor = 'inputMessageStakeDice';

  static InputMessageStakeDice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageStakeDice(
      stateHash: (json['state_hash'] as String?) ?? '',
      stakeToncoinAmount: (json['stake_toncoin_amount'] as int?) ?? 0,
      clearDraft: (json['clear_draft'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'state_hash': stateHash,
        'stake_toncoin_amount': stakeToncoinAmount,
        'clear_draft': clearDraft,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputMessageStakeDice &&
          const DeepCollectionEquality().equals(other.stateHash, stateHash) &&
          const DeepCollectionEquality()
              .equals(other.stakeToncoinAmount, stakeToncoinAmount) &&
          const DeepCollectionEquality().equals(other.clearDraft, clearDraft));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(stateHash),
        const DeepCollectionEquality().hash(stakeToncoinAmount),
        const DeepCollectionEquality().hash(clearDraft)
      ]);
}
