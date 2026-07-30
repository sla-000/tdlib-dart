// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a symbol shown on the pattern of an upgraded gift
@immutable
class UpgradedGiftSymbol extends TdObject {
  const UpgradedGiftSymbol({
    required this.name,
    required this.sticker,
    required this.rarity,
  });

  /// [name] Name of the symbol
  final String name;

  /// [sticker] The sticker representing the symbol
  final Sticker sticker;

  /// [rarity] The rarity of the symbol
  final UpgradedGiftAttributeRarity rarity;

  static const String constructor = 'upgradedGiftSymbol';

  static UpgradedGiftSymbol? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftSymbol(
      name: json['name'] as String,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?)!,
      rarity: UpgradedGiftAttributeRarity.fromJson(
          json['rarity'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'sticker': sticker.toJson(),
        'rarity': rarity.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftSymbol &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.sticker, sticker) &&
          const DeepCollectionEquality().equals(other.rarity, rarity));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(sticker),
        const DeepCollectionEquality().hash(rarity)
      ]);
}
