// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a giveaway prize
@immutable
abstract class GiveawayPrize extends TdObject {
  const GiveawayPrize();

  static const String constructor = 'giveawayPrize';

  /// Inherited by:
  /// [GiveawayPrizePremium]
  /// [GiveawayPrizeStars]
  static GiveawayPrize? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiveawayPrizePremium.constructor:
        return GiveawayPrizePremium.fromJson(json);
      case GiveawayPrizeStars.constructor:
        return GiveawayPrizeStars.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GiveawayPrize);

  @override
  int get hashCode => runtimeType.hashCode;
}
