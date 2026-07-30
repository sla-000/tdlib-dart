// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A background from a chat theme based on an emoji; can be used only as a
/// chat background in channels
@immutable
class BackgroundTypeChatTheme extends BackgroundType {
  const BackgroundTypeChatTheme({
    required this.themeName,
  });

  /// [themeName] Name of the emoji chat theme
  final String themeName;

  static const String constructor = 'backgroundTypeChatTheme';

  static BackgroundTypeChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundTypeChatTheme(
      themeName: (json['theme_name'] as String?) ?? '',
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
          other is BackgroundTypeChatTheme &&
          const DeepCollectionEquality().equals(other.themeName, themeName));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(themeName)]);
}
