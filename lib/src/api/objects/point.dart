// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A point on a Cartesian plane
@immutable
class Point extends TdObject {
  const Point({
    required this.x,
    required this.y,
  });

  /// [x] The point's first coordinate
  final double x;

  /// [y] The point's second coordinate
  final double y;

  static const String constructor = 'point';

  static Point? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Point(
      x: (json['x'] as num?)?.toDouble() ?? 0.0,
      y: (json['y'] as num?)?.toDouble() ?? 0.0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'x': x,
        'y': y,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Point &&
          const DeepCollectionEquality().equals(other.x, x) &&
          const DeepCollectionEquality().equals(other.y, y));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(x),
        const DeepCollectionEquality().hash(y)
      ]);
}
