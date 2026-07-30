// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A user changed the answer to a poll; for bots only
@immutable
class UpdatePollAnswer extends Update {
  const UpdatePollAnswer({
    required this.pollId,
    required this.voterId,
    required this.optionIds,
    required this.optionPositions,
  });

  /// [pollId] Unique poll identifier
  final int pollId;

  /// [voterId] Identifier of the message sender that changed the answer to the
  /// poll
  final MessageSender voterId;

  /// [optionIds] Unique identifiers of answer options, that were chosen by the
  /// user
  final List<String> optionIds;

  /// [optionPositions] 0-based identifiers of answer options, that were chosen
  /// by the user
  final List<int> optionPositions;

  static const String constructor = 'updatePollAnswer';

  static UpdatePollAnswer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdatePollAnswer(
      pollId: (json['poll_id'] is int
              ? json['poll_id'] as int
              : int.tryParse(json['poll_id']?.toString() ?? '')) ??
          0,
      voterId:
          MessageSender.fromJson(json['voter_id'] as Map<String, dynamic>?)!,
      optionIds: List<String>.from(
          ((json['option_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item as String)
              .toList()),
      optionPositions: List<int>.from(
          ((json['option_positions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'poll_id': pollId.toString(),
        'voter_id': voterId.toJson(),
        'option_ids': optionIds.map((item) => item).toList(),
        'option_positions': optionPositions.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdatePollAnswer &&
          const DeepCollectionEquality().equals(other.pollId, pollId) &&
          const DeepCollectionEquality().equals(other.voterId, voterId) &&
          const DeepCollectionEquality().equals(other.optionIds, optionIds) &&
          const DeepCollectionEquality()
              .equals(other.optionPositions, optionPositions));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(pollId),
        const DeepCollectionEquality().hash(voterId),
        const DeepCollectionEquality().hash(optionIds),
        const DeepCollectionEquality().hash(optionPositions)
      ]);
}
