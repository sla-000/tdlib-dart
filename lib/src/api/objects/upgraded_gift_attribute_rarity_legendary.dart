// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The attribute is legendary
@immutable
class UpgradedGiftAttributeRarityLegendary extends UpgradedGiftAttributeRarity {
  const UpgradedGiftAttributeRarityLegendary();

  static const String constructor = 'upgradedGiftAttributeRarityLegendary';

  static UpgradedGiftAttributeRarityLegendary? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UpgradedGiftAttributeRarityLegendary();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftAttributeRarityLegendary);

  @override
  int get hashCode => runtimeType.hashCode;
}
