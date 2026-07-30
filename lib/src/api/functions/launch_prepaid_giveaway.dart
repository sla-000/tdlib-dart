// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Launches a prepaid giveaway
/// Returns [Ok]
@immutable
class LaunchPrepaidGiveaway extends TdFunction {
  const LaunchPrepaidGiveaway({
    required this.giveawayId,
    required this.parameters,
    required this.winnerCount,
    required this.starCount,
  });

  /// [giveawayId] Unique identifier of the prepaid giveaway
  final int giveawayId;

  /// [parameters] Giveaway parameters
  final GiveawayParameters parameters;

  /// [winnerCount] The number of users to receive giveaway prize
  final int winnerCount;

  /// [starCount] The number of Telegram Stars to be distributed through the
  /// giveaway; pass 0 for Telegram Premium giveaways
  final int starCount;

  static const String constructor = 'launchPrepaidGiveaway';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'giveaway_id': giveawayId.toString(),
        'parameters': parameters.toJson(),
        'winner_count': winnerCount,
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LaunchPrepaidGiveaway &&
          const DeepCollectionEquality().equals(other.giveawayId, giveawayId) &&
          const DeepCollectionEquality().equals(other.parameters, parameters) &&
          const DeepCollectionEquality()
              .equals(other.winnerCount, winnerCount) &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(giveawayId),
        const DeepCollectionEquality().hash(parameters),
        const DeepCollectionEquality().hash(winnerCount),
        const DeepCollectionEquality().hash(starCount)
      ]);
}
