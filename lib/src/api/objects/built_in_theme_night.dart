// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Regular dark theme
@immutable
class BuiltInThemeNight extends BuiltInTheme {
  const BuiltInThemeNight();

  static const String constructor = 'builtInThemeNight';

  static BuiltInThemeNight? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BuiltInThemeNight();
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
      (other.runtimeType == runtimeType && other is BuiltInThemeNight);

  @override
  int get hashCode => runtimeType.hashCode;
}
