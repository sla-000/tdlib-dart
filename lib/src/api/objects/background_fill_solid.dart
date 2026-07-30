// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a solid fill of a background
@immutable
class BackgroundFillSolid extends BackgroundFill {
  const BackgroundFillSolid({
    required this.color,
  });

  /// [color] A color of the background in the RGB format
  final int color;

  static const String constructor = 'backgroundFillSolid';

  static BackgroundFillSolid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundFillSolid(
      color: (json['color'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'color': color,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BackgroundFillSolid &&
          const DeepCollectionEquality().equals(other.color, color));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(color)]);
}
