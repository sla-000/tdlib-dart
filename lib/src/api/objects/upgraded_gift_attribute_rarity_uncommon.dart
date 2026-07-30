// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The attribute is uncommon
@immutable
class UpgradedGiftAttributeRarityUncommon extends UpgradedGiftAttributeRarity {
  const UpgradedGiftAttributeRarityUncommon();

  static const String constructor = 'upgradedGiftAttributeRarityUncommon';

  static UpgradedGiftAttributeRarityUncommon? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UpgradedGiftAttributeRarityUncommon();
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
          other is UpgradedGiftAttributeRarityUncommon);

  @override
  int get hashCode => runtimeType.hashCode;
}
