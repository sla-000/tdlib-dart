// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Classic light theme
@immutable
class BuiltInThemeClassic extends BuiltInTheme {
  const BuiltInThemeClassic();

  static const String constructor = 'builtInThemeClassic';

  static BuiltInThemeClassic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BuiltInThemeClassic();
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
      (other.runtimeType == runtimeType && other is BuiltInThemeClassic);

  @override
  int get hashCode => runtimeType.hashCode;
}
