import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
