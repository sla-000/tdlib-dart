// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The attribute is rare
@immutable
class UpgradedGiftAttributeRarityRare extends UpgradedGiftAttributeRarity {
  const UpgradedGiftAttributeRarityRare();

  static const String constructor = 'upgradedGiftAttributeRarityRare';

  static UpgradedGiftAttributeRarityRare? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UpgradedGiftAttributeRarityRare();
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
          other is UpgradedGiftAttributeRarityRare);

  @override
  int get hashCode => runtimeType.hashCode;
}
