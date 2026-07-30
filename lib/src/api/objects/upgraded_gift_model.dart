// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a model of an upgraded gift
@immutable
class UpgradedGiftModel extends TdObject {
  const UpgradedGiftModel({
    required this.name,
    required this.sticker,
    required this.rarity,
    required this.isCrafted,
  });

  /// [name] Name of the model
  final String name;

  /// [sticker] The sticker representing the upgraded gift
  final Sticker sticker;

  /// [rarity] The rarity of the model
  final UpgradedGiftAttributeRarity rarity;

  /// [isCrafted] True, if the model can be obtained only through gift crafting
  final bool isCrafted;

  static const String constructor = 'upgradedGiftModel';

  static UpgradedGiftModel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftModel(
      name: (json['name'] as String?) ?? '',
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?)!,
      rarity: UpgradedGiftAttributeRarity.fromJson(
          json['rarity'] as Map<String, dynamic>?)!,
      isCrafted: (json['is_crafted'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'sticker': sticker.toJson(),
        'rarity': rarity.toJson(),
        'is_crafted': isCrafted,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftModel &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.sticker, sticker) &&
          const DeepCollectionEquality().equals(other.rarity, rarity) &&
          const DeepCollectionEquality().equals(other.isCrafted, isCrafted));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(sticker),
        const DeepCollectionEquality().hash(rarity),
        const DeepCollectionEquality().hash(isCrafted)
      ]);
}
