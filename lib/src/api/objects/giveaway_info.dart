// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about a giveaway
@immutable
abstract class GiveawayInfo extends TdObject {
  const GiveawayInfo();

  static const String constructor = 'giveawayInfo';

  /// Inherited by:
  /// [GiveawayInfoCompleted]
  /// [GiveawayInfoOngoing]
  static GiveawayInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiveawayInfoCompleted.constructor:
        return GiveawayInfoCompleted.fromJson(json);
      case GiveawayInfoOngoing.constructor:
        return GiveawayInfoOngoing.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GiveawayInfo);

  @override
  int get hashCode => runtimeType.hashCode;
}
