// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes style of a button
@immutable
abstract class ButtonStyle extends TdObject {
  const ButtonStyle();

  static const String constructor = 'buttonStyle';

  /// Inherited by:
  /// [ButtonStyleDanger]
  /// [ButtonStyleDefault]
  /// [ButtonStyleLink]
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
      case ButtonStyleLink.constructor:
        return ButtonStyleLink.fromJson(json);
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ButtonStyle);

  @override
  int get hashCode => runtimeType.hashCode;
}
