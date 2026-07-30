// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Converts a themeParameters object to corresponding JSON-serialized string.
/// Can be called synchronously
/// Returns [Text]
@immutable
class GetThemeParametersJsonString extends TdFunction {
  const GetThemeParametersJsonString({
    required this.theme,
  });

  /// [theme] Theme parameters to convert to JSON
  final ThemeParameters theme;

  static const String constructor = 'getThemeParametersJsonString';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'theme': theme.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetThemeParametersJsonString &&
          const DeepCollectionEquality().equals(other.theme, theme));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(theme)]);
}
