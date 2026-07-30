// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A thumbnail to be sent along with a file; must be in JPEG or WEBP format
/// for stickers, and less than 200 KB in size
@immutable
class InputThumbnail extends TdObject {
  const InputThumbnail({
    required this.thumbnail,
    required this.width,
    required this.height,
  });

  /// [thumbnail] Thumbnail file to send. Sending thumbnails by file_id is
  /// currently not supported
  final InputFile thumbnail;

  /// [width] Thumbnail width, usually shouldn't exceed 320. Use 0 if unknown
  final int width;

  /// [height] Thumbnail height, usually shouldn't exceed 320. Use 0 if unknown
  final int height;

  static const String constructor = 'inputThumbnail';

  static InputThumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputThumbnail(
      thumbnail:
          InputFile.fromJson(json['thumbnail'] as Map<String, dynamic>?)!,
      width: json['width'] as int,
      height: json['height'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'thumbnail': thumbnail.toJson(),
        'width': width,
        'height': height,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputThumbnail &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height)
      ]);
}
