// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns backgrounds installed by the user
/// Returns [Backgrounds]
@immutable
class GetInstalledBackgrounds extends TdFunction {
  const GetInstalledBackgrounds({
    required this.forDarkTheme,
  });

  /// [forDarkTheme] Pass true to order returned backgrounds for a dark theme
  final bool forDarkTheme;

  static const String constructor = 'getInstalledBackgrounds';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'for_dark_theme': forDarkTheme,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetInstalledBackgrounds &&
          const DeepCollectionEquality()
              .equals(other.forDarkTheme, forDarkTheme));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(forDarkTheme)]);
}
