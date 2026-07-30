// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets default background for chats; adds the background to the list of
/// installed backgrounds
/// Returns [Background]
@immutable
class SetDefaultBackground extends TdFunction {
  const SetDefaultBackground({
    this.background,
    this.type,
    required this.forDarkTheme,
  });

  /// [background] The input background to use; pass null to create a new filled
  /// background
  final InputBackground? background;

  /// [type] Background type; pass null to use the default type of the remote
  /// background; backgroundTypeChatTheme isn't supported
  final BackgroundType? type;

  /// [forDarkTheme] Pass true if the background is set for a dark theme
  final bool forDarkTheme;

  static const String constructor = 'setDefaultBackground';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'background': background?.toJson(),
        'type': type?.toJson(),
        'for_dark_theme': forDarkTheme,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetDefaultBackground &&
          const DeepCollectionEquality().equals(other.background, background) &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality()
              .equals(other.forDarkTheme, forDarkTheme));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(background),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(forDarkTheme)
      ]);
}
