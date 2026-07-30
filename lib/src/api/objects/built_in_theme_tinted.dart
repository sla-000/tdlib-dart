// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Tinted dark theme
@immutable
class BuiltInThemeTinted extends BuiltInTheme {
  const BuiltInThemeTinted();

  static const String constructor = 'builtInThemeTinted';

  static BuiltInThemeTinted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BuiltInThemeTinted();
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
      (other.runtimeType == runtimeType && other is BuiltInThemeTinted);

  @override
  int get hashCode => runtimeType.hashCode;
}
