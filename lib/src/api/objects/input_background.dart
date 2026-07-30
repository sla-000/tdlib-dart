// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about background to set
@immutable
abstract class InputBackground extends TdObject {
  const InputBackground();

  static const String constructor = 'inputBackground';

  /// Inherited by:
  /// [InputBackgroundLocal]
  /// [InputBackgroundPrevious]
  /// [InputBackgroundRemote]
  static InputBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputBackgroundLocal.constructor:
        return InputBackgroundLocal.fromJson(json);
      case InputBackgroundPrevious.constructor:
        return InputBackgroundPrevious.fromJson(json);
      case InputBackgroundRemote.constructor:
        return InputBackgroundRemote.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is InputBackground);

  @override
  int get hashCode => runtimeType.hashCode;
}
