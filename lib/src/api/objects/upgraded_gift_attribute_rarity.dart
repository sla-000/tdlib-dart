// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes rarity of an upgraded gift attribute
@immutable
abstract class UpgradedGiftAttributeRarity extends TdObject {
  const UpgradedGiftAttributeRarity();

  static const String constructor = 'upgradedGiftAttributeRarity';

  /// Inherited by:
  /// [UpgradedGiftAttributeRarityEpic]
  /// [UpgradedGiftAttributeRarityLegendary]
  /// [UpgradedGiftAttributeRarityPerMille]
  /// [UpgradedGiftAttributeRarityRare]
  /// [UpgradedGiftAttributeRarityUncommon]
  static UpgradedGiftAttributeRarity? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UpgradedGiftAttributeRarityEpic.constructor:
        return UpgradedGiftAttributeRarityEpic.fromJson(json);
      case UpgradedGiftAttributeRarityLegendary.constructor:
        return UpgradedGiftAttributeRarityLegendary.fromJson(json);
      case UpgradedGiftAttributeRarityPerMille.constructor:
        return UpgradedGiftAttributeRarityPerMille.fromJson(json);
      case UpgradedGiftAttributeRarityRare.constructor:
        return UpgradedGiftAttributeRarityRare.fromJson(json);
      case UpgradedGiftAttributeRarityUncommon.constructor:
        return UpgradedGiftAttributeRarityUncommon.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftAttributeRarity);

  @override
  int get hashCode => runtimeType.hashCode;
}
