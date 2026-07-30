// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes type of paid media to send
@immutable
abstract class InputPaidMediaType extends TdObject {
  const InputPaidMediaType();

  static const String constructor = 'inputPaidMediaType';

  /// Inherited by:
  /// [InputPaidMediaTypePhoto]
  /// [InputPaidMediaTypeVideo]
  static InputPaidMediaType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputPaidMediaTypePhoto.constructor:
        return InputPaidMediaTypePhoto.fromJson(json);
      case InputPaidMediaTypeVideo.constructor:
        return InputPaidMediaTypeVideo.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is InputPaidMediaType);

  @override
  int get hashCode => runtimeType.hashCode;
}
