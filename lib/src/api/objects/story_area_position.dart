// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes position of a clickable rectangle area on a story media
@immutable
class StoryAreaPosition extends TdObject {
  const StoryAreaPosition({
    required this.xPercentage,
    required this.yPercentage,
    required this.widthPercentage,
    required this.heightPercentage,
    required this.rotationAngle,
    required this.cornerRadiusPercentage,
  });

  /// [xPercentage] The abscissa of the rectangle's center, as a percentage of
  /// the media width
  final double xPercentage;

  /// [yPercentage] The ordinate of the rectangle's center, as a percentage of
  /// the media height
  final double yPercentage;

  /// [widthPercentage] The width of the rectangle, as a percentage of the media
  /// width
  final double widthPercentage;

  /// [heightPercentage] The height of the rectangle, as a percentage of the
  /// media height
  final double heightPercentage;

  /// [rotationAngle] Clockwise rotation angle of the rectangle, in degrees;
  /// 0-360
  final double rotationAngle;

  /// [cornerRadiusPercentage] The radius of the rectangle corner rounding, as a
  /// percentage of the media width
  final double cornerRadiusPercentage;

  static const String constructor = 'storyAreaPosition';

  static StoryAreaPosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaPosition(
      xPercentage: (json['x_percentage'] as num?)?.toDouble() ?? 0.0,
      yPercentage: (json['y_percentage'] as num?)?.toDouble() ?? 0.0,
      widthPercentage: (json['width_percentage'] as num?)?.toDouble() ?? 0.0,
      heightPercentage: (json['height_percentage'] as num?)?.toDouble() ?? 0.0,
      rotationAngle: (json['rotation_angle'] as num?)?.toDouble() ?? 0.0,
      cornerRadiusPercentage:
          (json['corner_radius_percentage'] as num?)?.toDouble() ?? 0.0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'x_percentage': xPercentage,
        'y_percentage': yPercentage,
        'width_percentage': widthPercentage,
        'height_percentage': heightPercentage,
        'rotation_angle': rotationAngle,
        'corner_radius_percentage': cornerRadiusPercentage,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StoryAreaPosition &&
          const DeepCollectionEquality()
              .equals(other.xPercentage, xPercentage) &&
          const DeepCollectionEquality()
              .equals(other.yPercentage, yPercentage) &&
          const DeepCollectionEquality()
              .equals(other.widthPercentage, widthPercentage) &&
          const DeepCollectionEquality()
              .equals(other.heightPercentage, heightPercentage) &&
          const DeepCollectionEquality()
              .equals(other.rotationAngle, rotationAngle) &&
          const DeepCollectionEquality()
              .equals(other.cornerRadiusPercentage, cornerRadiusPercentage));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(xPercentage),
        const DeepCollectionEquality().hash(yPercentage),
        const DeepCollectionEquality().hash(widthPercentage),
        const DeepCollectionEquality().hash(heightPercentage),
        const DeepCollectionEquality().hash(rotationAngle),
        const DeepCollectionEquality().hash(cornerRadiusPercentage)
      ]);
}
