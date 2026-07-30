// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Regular light theme
@immutable
class BuiltInThemeDay extends BuiltInTheme {
  const BuiltInThemeDay();

  static const String constructor = 'builtInThemeDay';

  static BuiltInThemeDay? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BuiltInThemeDay();
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
      (other.runtimeType == runtimeType && other is BuiltInThemeDay);

  @override
  int get hashCode => runtimeType.hashCode;
}
