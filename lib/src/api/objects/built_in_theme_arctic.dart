// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Arctic light theme
@immutable
class BuiltInThemeArctic extends BuiltInTheme {
  const BuiltInThemeArctic();

  static const String constructor = 'builtInThemeArctic';

  static BuiltInThemeArctic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BuiltInThemeArctic();
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
      (other.runtimeType == runtimeType && other is BuiltInThemeArctic);

  @override
  int get hashCode => runtimeType.hashCode;
}
