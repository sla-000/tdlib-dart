// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a paid media to be sent
@immutable
class InputPaidMedia extends TdObject {
  const InputPaidMedia({
    required this.type,
    required this.media,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.width,
    required this.height,
  });

  /// [type] Type of the media
  final InputPaidMediaType type;

  /// [media] Photo or video to be sent
  final InputFile media;

  /// [thumbnail] Media thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the media,
  /// if applicable
  final List<int> addedStickerFileIds;

  /// [width] Media width
  final int width;

  /// [height] Media height
  final int height;

  static const String constructor = 'inputPaidMedia';

  static InputPaidMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPaidMedia(
      type: InputPaidMediaType.fromJson(json['type'] as Map<String, dynamic>?)!,
      media: InputFile.fromJson(json['media'] as Map<String, dynamic>?)!,
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      addedStickerFileIds: List<int>.from(
          ((json['added_sticker_file_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'media': media.toJson(),
        'thumbnail': thumbnail?.toJson(),
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
          other is InputPaidMedia &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality().equals(other.media, media) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality()
              .equals(other.addedStickerFileIds, addedStickerFileIds) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(media),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(addedStickerFileIds),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height)
      ]);
}
