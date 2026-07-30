import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns all possible variants of upgraded gifts for a regular gift
/// Returns [GiftUpgradeVariants]
@immutable
class GetUpgradedGiftVariants extends TdFunction {
  const GetUpgradedGiftVariants({
    required this.regularGiftId,
    required this.returnUpgradeModels,
    required this.returnCraftModels,
  });

  /// [regularGiftId] Identifier of the regular gift
  final int regularGiftId;

  /// [returnUpgradeModels] Pass true to get models that can be obtained by
  /// upgrading a regular gift
  final bool returnUpgradeModels;

  /// [returnCraftModels] Pass true to get models that can be obtained by
  /// crafting a gift from upgraded gifts
  final bool returnCraftModels;

  static const String constructor = 'getUpgradedGiftVariants';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'regular_gift_id': regularGiftId,
        'return_upgrade_models': returnUpgradeModels,
        'return_craft_models': returnCraftModels,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
