import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a built-in theme of an official application
@immutable
abstract class BuiltInTheme extends TdObject {
  const BuiltInTheme();

  static const String constructor = 'builtInTheme';

  /// Inherited by:
  /// [BuiltInThemeArctic]
  /// [BuiltInThemeClassic]
  /// [BuiltInThemeDay]
  /// [BuiltInThemeNight]
  /// [BuiltInThemeTinted]
  static BuiltInTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BuiltInThemeArctic.constructor:
        return BuiltInThemeArctic.fromJson(json);
      case BuiltInThemeClassic.constructor:
        return BuiltInThemeClassic.fromJson(json);
      case BuiltInThemeDay.constructor:
        return BuiltInThemeDay.fromJson(json);
      case BuiltInThemeNight.constructor:
        return BuiltInThemeNight.fromJson(json);
      case BuiltInThemeTinted.constructor:
        return BuiltInThemeTinted.fromJson(json);
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
