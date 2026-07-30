// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a backdrop of an upgraded gift
@immutable
class UpgradedGiftBackdrop extends TdObject {
  const UpgradedGiftBackdrop({
    required this.id,
    required this.name,
    required this.colors,
    required this.rarity,
  });

  /// [id] Unique identifier of the backdrop
  final int id;

  /// [name] Name of the backdrop
  final String name;

  /// [colors] Colors of the backdrop
  final UpgradedGiftBackdropColors colors;

  /// [rarity] The rarity of the backdrop
  final UpgradedGiftAttributeRarity rarity;

  static const String constructor = 'upgradedGiftBackdrop';

  static UpgradedGiftBackdrop? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftBackdrop(
      id: (json['id'] as int?) ?? 0,
      name: (json['name'] as String?) ?? '',
      colors: UpgradedGiftBackdropColors.fromJson(
          json['colors'] as Map<String, dynamic>?)!,
      rarity: UpgradedGiftAttributeRarity.fromJson(
          json['rarity'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'colors': colors.toJson(),
        'rarity': rarity.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftBackdrop &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.colors, colors) &&
          const DeepCollectionEquality().equals(other.rarity, rarity));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(colors),
        const DeepCollectionEquality().hash(rarity)
      ]);
}
