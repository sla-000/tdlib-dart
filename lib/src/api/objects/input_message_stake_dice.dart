import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A stake dice message
@immutable
class InputMessageStakeDice extends InputMessageContent {
  const InputMessageStakeDice({
    required this.stateHash,
    required this.stakeGramAmount,
    required this.clearDraft,
  });

  /// [stateHash] Hash of the stake dice state. The state hash can be used only
  /// if it was received recently enough. Otherwise, a new state must be
  /// requested using getStakeDiceState
  final String stateHash;

  /// [stakeGramAmount] The TON Gram amount that will be staked; in the smallest
  /// units of the currency. Must be in the range
  /// getOption("stake_dice_stake_amount_min")-getOption("stake_dice_stake_amount_max")
  final int stakeGramAmount;

  /// [clearDraft] Pass true to delete message draft in the chat
  final bool clearDraft;

  static const String constructor = 'inputMessageStakeDice';

  static InputMessageStakeDice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageStakeDice(
      stateHash: json['state_hash'] as String,
      stakeGramAmount: json['stake_gram_amount'] as int,
      clearDraft: json['clear_draft'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'state_hash': stateHash,
        'stake_gram_amount': stakeGramAmount,
        'clear_draft': clearDraft,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
