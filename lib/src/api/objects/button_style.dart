import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes style of a button
@immutable
abstract class ButtonStyle extends TdObject {
  const ButtonStyle();

  static const String constructor = 'buttonStyle';

  /// Inherited by:
  /// [ButtonStyleDanger]
  /// [ButtonStyleDefault]
  /// [ButtonStylePrimary]
  /// [ButtonStyleSuccess]
  static ButtonStyle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ButtonStyleDanger.constructor:
        return ButtonStyleDanger.fromJson(json);
      case ButtonStyleDefault.constructor:
        return ButtonStyleDefault.fromJson(json);
      case ButtonStylePrimary.constructor:
        return ButtonStylePrimary.fromJson(json);
      case ButtonStyleSuccess.constructor:
        return ButtonStyleSuccess.fromJson(json);
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
