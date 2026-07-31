// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The rarity is represented as the numeric frequence of the model
@immutable
class UpgradedGiftAttributeRarityPerMille extends UpgradedGiftAttributeRarity {
  const UpgradedGiftAttributeRarityPerMille({
    required this.perMille,
  });

  /// [perMille] The number of upgraded gifts that receive this attribute for
  /// each 1000 gifts upgraded; if 0, then it can be shown as "
  final int perMille;

  static const String constructor = 'upgradedGiftAttributeRarityPerMille';

  static UpgradedGiftAttributeRarityPerMille? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftAttributeRarityPerMille(
      perMille: (json['per_mille'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'per_mille': perMille,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftAttributeRarityPerMille &&
          const DeepCollectionEquality().equals(other.perMille, perMille));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(perMille)]);
}
