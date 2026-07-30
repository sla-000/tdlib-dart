import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains all possible variants of upgraded gifts for the given regular
/// gift
@immutable
class GiftUpgradeVariants extends TdObject {
  const GiftUpgradeVariants({
    required this.models,
    required this.symbols,
    required this.backdrops,
  });

  /// [models] Models that can be chosen for the gift after upgrade
  final List<UpgradedGiftModel> models;

  /// [symbols] Symbols that can be chosen for the gift after upgrade
  final List<UpgradedGiftSymbol> symbols;

  /// [backdrops] Backdrops that can be chosen for the gift after upgrade
  final List<UpgradedGiftBackdrop> backdrops;

  static const String constructor = 'giftUpgradeVariants';

  static GiftUpgradeVariants? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftUpgradeVariants(
      models: List<UpgradedGiftModel>.from(
          ((json['models'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => UpgradedGiftModel.fromJson(item))
              .toList()),
      symbols: List<UpgradedGiftSymbol>.from(
          ((json['symbols'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => UpgradedGiftSymbol.fromJson(item))
              .toList()),
      backdrops: List<UpgradedGiftBackdrop>.from(
          ((json['backdrops'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => UpgradedGiftBackdrop.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'models': models.map((item) => item.toJson()).toList(),
        'symbols': symbols.map((item) => item.toJson()).toList(),
        'backdrops': backdrops.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
