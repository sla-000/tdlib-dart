// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a cloud theme. TDLib has no theme support yet
@immutable
class InternalLinkTypeTheme extends InternalLinkType {
  const InternalLinkTypeTheme({
    required this.themeName,
  });

  /// [themeName] Name of the theme
  final String themeName;

  static const String constructor = 'internalLinkTypeTheme';

  static InternalLinkTypeTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeTheme(
      themeName: json['theme_name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'theme_name': themeName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypeTheme &&
          const DeepCollectionEquality().equals(other.themeName, themeName));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(themeName)]);
}
