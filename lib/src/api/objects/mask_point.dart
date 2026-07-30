// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Part of the face, relative to which a mask is placed
@immutable
abstract class MaskPoint extends TdObject {
  const MaskPoint();

  static const String constructor = 'maskPoint';

  /// Inherited by:
  /// [MaskPointChin]
  /// [MaskPointEyes]
  /// [MaskPointForehead]
  /// [MaskPointMouth]
  static MaskPoint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MaskPointChin.constructor:
        return MaskPointChin.fromJson(json);
      case MaskPointEyes.constructor:
        return MaskPointEyes.fromJson(json);
      case MaskPointForehead.constructor:
        return MaskPointForehead.fromJson(json);
      case MaskPointMouth.constructor:
        return MaskPointMouth.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is MaskPoint);

  @override
  int get hashCode => runtimeType.hashCode;
}
