// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An animation to be sent
@immutable
class InputAnimation extends TdObject {
  const InputAnimation({
    required this.animation,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
  });

  /// [animation] Animation file to be sent
  final InputFile animation;

  /// [thumbnail] Animation thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the
  /// animation, if applicable
  final List<int> addedStickerFileIds;

  /// [duration] Duration of the animation, in seconds; may be replaced by the
  /// server
  final int duration;

  /// [width] Width of the animation; may be replaced by the server
  final int width;

  /// [height] Height of the animation; may be replaced by the server
  final int height;

  static const String constructor = 'inputAnimation';

  static InputAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputAnimation(
      animation:
          InputFile.fromJson(json['animation'] as Map<String, dynamic>?)!,
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      addedStickerFileIds: List<int>.from(
          ((json['added_sticker_file_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
      duration: (json['duration'] as int?) ?? 0,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animation': animation.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'added_sticker_file_ids':
            addedStickerFileIds.map((item) => item).toList(),
        'duration': duration,
        'width': width,
        'height': height,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputAnimation &&
          const DeepCollectionEquality().equals(other.animation, animation) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality()
              .equals(other.addedStickerFileIds, addedStickerFileIds) &&
          const DeepCollectionEquality().equals(other.duration, duration) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(animation),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(addedStickerFileIds),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height)
      ]);
}
