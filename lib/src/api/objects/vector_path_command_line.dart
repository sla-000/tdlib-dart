// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A straight line to a given point
@immutable
class VectorPathCommandLine extends VectorPathCommand {
  const VectorPathCommandLine({
    required this.endPoint,
  });

  /// [endPoint] The end point of the straight line
  final Point endPoint;

  static const String constructor = 'vectorPathCommandLine';

  static VectorPathCommandLine? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VectorPathCommandLine(
      endPoint: Point.fromJson(json['end_point'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'end_point': endPoint.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is VectorPathCommandLine &&
          const DeepCollectionEquality().equals(other.endPoint, endPoint));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(endPoint)]);
}
