// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes default background for chats
/// Returns [Ok]
@immutable
class DeleteDefaultBackground extends TdFunction {
  const DeleteDefaultBackground({
    required this.forDarkTheme,
  });

  /// [forDarkTheme] Pass true if the background is deleted for a dark theme
  final bool forDarkTheme;

  static const String constructor = 'deleteDefaultBackground';

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
          other is DeleteDefaultBackground &&
          const DeepCollectionEquality()
              .equals(other.forDarkTheme, forDarkTheme));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(forDarkTheme)]);
}
