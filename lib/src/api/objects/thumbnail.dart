// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a thumbnail
@immutable
class Thumbnail extends TdObject {
  const Thumbnail({
    required this.format,
    required this.width,
    required this.height,
    required this.file,
  });

  /// [format] Thumbnail format
  final ThumbnailFormat format;

  /// [width] Thumbnail width
  final int width;

  /// [height] Thumbnail height
  final int height;

  /// [file] The thumbnail
  final File file;

  static const String constructor = 'thumbnail';

  static Thumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Thumbnail(
      format:
          ThumbnailFormat.fromJson(json['format'] as Map<String, dynamic>?)!,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      file: File.fromJson(json['file'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'format': format.toJson(),
        'width': width,
        'height': height,
        'file': file.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Thumbnail &&
          const DeepCollectionEquality().equals(other.format, format) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height) &&
          const DeepCollectionEquality().equals(other.file, file));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(format),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height),
        const DeepCollectionEquality().hash(file)
      ]);
}
