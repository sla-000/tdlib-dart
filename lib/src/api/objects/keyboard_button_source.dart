// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes source of a keyboard button
@immutable
abstract class KeyboardButtonSource extends TdObject {
  const KeyboardButtonSource();

  static const String constructor = 'keyboardButtonSource';

  /// Inherited by:
  /// [KeyboardButtonSourceMessage]
  /// [KeyboardButtonSourceWebApp]
  static KeyboardButtonSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case KeyboardButtonSourceMessage.constructor:
        return KeyboardButtonSourceMessage.fromJson(json);
      case KeyboardButtonSourceWebApp.constructor:
        return KeyboardButtonSourceWebApp.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is KeyboardButtonSource);

  @override
  int get hashCode => runtimeType.hashCode;
}
