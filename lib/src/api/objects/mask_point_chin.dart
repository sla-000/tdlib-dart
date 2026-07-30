// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The mask is placed relatively to the chin
@immutable
class MaskPointChin extends MaskPoint {
  const MaskPointChin();

  static const String constructor = 'maskPointChin';

  static MaskPointChin? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MaskPointChin();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is MaskPointChin);

  @override
  int get hashCode => runtimeType.hashCode;
}
