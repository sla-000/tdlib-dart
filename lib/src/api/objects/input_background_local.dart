// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A background from a local file
@immutable
class InputBackgroundLocal extends InputBackground {
  const InputBackgroundLocal({
    required this.background,
  });

  /// [background] Background file to use. Only inputFileLocal and
  /// inputFileGenerated are supported. The file must be in JPEG format for
  /// wallpapers and in PNG format for patterns
  final InputFile background;

  static const String constructor = 'inputBackgroundLocal';

  static InputBackgroundLocal? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputBackgroundLocal(
      background:
          InputFile.fromJson(json['background'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'background': background.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputBackgroundLocal &&
          const DeepCollectionEquality().equals(other.background, background));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(background)]);
}
