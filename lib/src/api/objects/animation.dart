// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an animation file. The animation must be encoded in GIF or MPEG4
/// format
@immutable
class Animation extends TdObject {
  const Animation({
    required this.duration,
    required this.width,
    required this.height,
    required this.fileName,
    required this.mimeType,
    required this.hasStickers,
    this.minithumbnail,
    this.thumbnail,
    required this.animation,
  });

  /// [duration] Duration of the animation, in seconds; as defined by the sender
  final int duration;

  /// [width] Width of the animation
  final int width;

  /// [height] Height of the animation
  final int height;

  /// [fileName] Original name of the file; as defined by the sender
  final String fileName;

  /// [mimeType] MIME type of the file, usually "image/gif" or "video/mp4"
  final String mimeType;

  /// [hasStickers] True, if stickers were added to the animation. The list of
  /// corresponding sticker set can be received using getAttachedStickerSets
  final bool hasStickers;

  /// [minithumbnail] Animation minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Animation thumbnail in JPEG or MPEG4 format; may be null
  final Thumbnail? thumbnail;

  /// [animation] File containing the animation
  final File animation;

  static const String constructor = 'animation';

  static Animation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Animation(
      duration: json['duration'] as int,
      width: json['width'] as int,
      height: json['height'] as int,
      fileName: json['file_name'] as String,
      mimeType: json['mime_type'] as String,
      hasStickers: json['has_stickers'] as bool,
      minithumbnail: Minithumbnail.fromJson(
          json['minithumbnail'] as Map<String, dynamic>?),
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      animation: File.fromJson(json['animation'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'duration': duration,
        'width': width,
        'height': height,
        'file_name': fileName,
        'mime_type': mimeType,
        'has_stickers': hasStickers,
        'minithumbnail': minithumbnail?.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'animation': animation.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Animation &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height) &&
          const DeepCollectionEquality().equals(other.fileName, fileName) &&
          const DeepCollectionEquality().equals(other.mimeType, mimeType) &&
          const DeepCollectionEquality()
              .equals(other.hasStickers, hasStickers) &&
          const DeepCollectionEquality()
              .equals(other.minithumbnail, minithumbnail) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality().equals(other.animation, animation));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height),
        const DeepCollectionEquality().hash(fileName),
        const DeepCollectionEquality().hash(mimeType),
        const DeepCollectionEquality().hash(hasStickers),
        const DeepCollectionEquality().hash(minithumbnail),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(animation)
      ]);
}
