// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a gradient fill of a background
@immutable
class BackgroundFillGradient extends BackgroundFill {
  const BackgroundFillGradient({
    required this.topColor,
    required this.bottomColor,
    required this.rotationAngle,
  });

  /// [topColor] A top color of the background in the RGB format
  final int topColor;

  /// [bottomColor] A bottom color of the background in the RGB format
  final int bottomColor;

  /// [rotationAngle] Clockwise rotation angle of the gradient, in degrees;
  /// 0-359. Must always be divisible by 45
  final int rotationAngle;

  static const String constructor = 'backgroundFillGradient';

  static BackgroundFillGradient? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundFillGradient(
      topColor: json['top_color'] as int,
      bottomColor: json['bottom_color'] as int,
      rotationAngle: json['rotation_angle'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'top_color': topColor,
        'bottom_color': bottomColor,
        'rotation_angle': rotationAngle,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BackgroundFillGradient &&
          const DeepCollectionEquality().equals(other.topColor, topColor) &&
          const DeepCollectionEquality()
              .equals(other.bottomColor, bottomColor) &&
          const DeepCollectionEquality()
              .equals(other.rotationAngle, rotationAngle));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(topColor),
        const DeepCollectionEquality().hash(bottomColor),
        const DeepCollectionEquality().hash(rotationAngle)
      ]);
}
