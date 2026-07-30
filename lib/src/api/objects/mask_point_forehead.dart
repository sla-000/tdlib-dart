// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The mask is placed relatively to the forehead
@immutable
class MaskPointForehead extends MaskPoint {
  const MaskPointForehead();

  static const String constructor = 'maskPointForehead';

  static MaskPointForehead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MaskPointForehead();
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
      (other.runtimeType == runtimeType && other is MaskPointForehead);

  @override
  int get hashCode => runtimeType.hashCode;
}
