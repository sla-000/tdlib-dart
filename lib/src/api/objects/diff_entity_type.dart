import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a change of a text
@immutable
abstract class DiffEntityType extends TdObject {
  const DiffEntityType();

  static const String constructor = 'diffEntityType';

  /// Inherited by:
  /// [DiffEntityTypeDelete]
  /// [DiffEntityTypeInsert]
  /// [DiffEntityTypeReplace]
  static DiffEntityType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case DiffEntityTypeDelete.constructor:
        return DiffEntityTypeDelete.fromJson(json);
      case DiffEntityTypeInsert.constructor:
        return DiffEntityTypeInsert.fromJson(json);
      case DiffEntityTypeReplace.constructor:
        return DiffEntityTypeReplace.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
