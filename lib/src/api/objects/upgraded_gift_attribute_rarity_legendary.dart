import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
