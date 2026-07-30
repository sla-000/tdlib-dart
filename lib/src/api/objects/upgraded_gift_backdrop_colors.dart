// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes colors of a backdrop of an upgraded gift
@immutable
class UpgradedGiftBackdropColors extends TdObject {
  const UpgradedGiftBackdropColors({
    required this.centerColor,
    required this.edgeColor,
    required this.symbolColor,
    required this.textColor,
  });

  /// [centerColor] A color in the center of the backdrop in the RGB format
  final int centerColor;

  /// [edgeColor] A color on the edges of the backdrop in the RGB format
  final int edgeColor;

  /// [symbolColor] A color to be applied for the symbol in the RGB format
  final int symbolColor;

  /// [textColor] A color for the text on the backdrop in the RGB format
  final int textColor;

  static const String constructor = 'upgradedGiftBackdropColors';

  static UpgradedGiftBackdropColors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftBackdropColors(
      centerColor: (json['center_color'] as int?) ?? 0,
      edgeColor: (json['edge_color'] as int?) ?? 0,
      symbolColor: (json['symbol_color'] as int?) ?? 0,
      textColor: (json['text_color'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'center_color': centerColor,
        'edge_color': edgeColor,
        'symbol_color': symbolColor,
        'text_color': textColor,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftBackdropColors &&
          const DeepCollectionEquality()
              .equals(other.centerColor, centerColor) &&
          const DeepCollectionEquality().equals(other.edgeColor, edgeColor) &&
          const DeepCollectionEquality()
              .equals(other.symbolColor, symbolColor) &&
          const DeepCollectionEquality().equals(other.textColor, textColor));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(centerColor),
        const DeepCollectionEquality().hash(edgeColor),
        const DeepCollectionEquality().hash(symbolColor),
        const DeepCollectionEquality().hash(textColor)
      ]);
}
