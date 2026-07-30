// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets a sticker set thumbnail
/// Returns [Ok]
@immutable
class SetStickerSetThumbnail extends TdFunction {
  const SetStickerSetThumbnail({
    required this.userId,
    required this.name,
    this.thumbnail,
    this.format,
  });

  /// [userId] Sticker set owner; ignored for regular users
  final int userId;

  /// [name] Sticker set name. The sticker set must be owned by the current user
  final String name;

  /// [thumbnail] Thumbnail to set; pass null to remove the sticker set
  /// thumbnail
  final InputFile? thumbnail;

  /// [format] Format of the thumbnail; pass null if thumbnail is removed
  final StickerFormat? format;

  static const String constructor = 'setStickerSetThumbnail';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'name': name,
        'thumbnail': thumbnail?.toJson(),
        'format': format?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetStickerSetThumbnail &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality().equals(other.format, format));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(format)
      ]);
}
