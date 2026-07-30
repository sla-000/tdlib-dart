// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A photo to be sent
@immutable
class InputPhoto extends TdObject {
  const InputPhoto({
    required this.photo,
    this.thumbnail,
    this.video,
    required this.addedStickerFileIds,
    required this.width,
    required this.height,
  });

  /// [photo] Photo to be sent. The photo must be at most 10 MB in size. The
  /// photo's width and height must not exceed 10000 in total. Width and height
  /// ratio must be at most 20
  final InputFile photo;

  /// [thumbnail] Photo thumbnail; pass null to skip thumbnail uploading. The
  /// thumbnail is sent to the other party only in secret chats
  final InputThumbnail? thumbnail;

  /// [video] Video of the live photo; not supported in secret chats; pass null
  /// if the photo isn't a live photo
  final InputFile? video;

  /// [addedStickerFileIds] File identifiers of the stickers added to the photo,
  /// if applicable
  final List<int> addedStickerFileIds;

  /// [width] Photo width; may be replaced by the server
  final int width;

  /// [height] Photo height; may be replaced by the server
  final int height;

  static const String constructor = 'inputPhoto';

  static InputPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPhoto(
      photo: InputFile.fromJson(json['photo'] as Map<String, dynamic>?)!,
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      video: InputFile.fromJson(json['video'] as Map<String, dynamic>?),
      addedStickerFileIds: List<int>.from(
          ((json['added_sticker_file_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      width: json['width'] as int,
      height: json['height'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'video': video?.toJson(),
        'added_sticker_file_ids':
            addedStickerFileIds.map((item) => item).toList(),
        'width': width,
        'height': height,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPhoto &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality().equals(other.video, video) &&
          const DeepCollectionEquality()
              .equals(other.addedStickerFileIds, addedStickerFileIds) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(video),
        const DeepCollectionEquality().hash(addedStickerFileIds),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height)
      ]);
}
