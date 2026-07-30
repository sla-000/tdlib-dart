import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The rarity is represented as the numeric frequency of the model
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
      perMille: json['per_mille'] as int,
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
