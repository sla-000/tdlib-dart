// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The sticker is a mask in WEBP format to be placed on photos or videos
@immutable
class StickerFullTypeMask extends StickerFullType {
  const StickerFullTypeMask({
    this.maskPosition,
  });

  /// [maskPosition] Position where the mask is placed; may be null
  final MaskPosition? maskPosition;

  static const String constructor = 'stickerFullTypeMask';

  static StickerFullTypeMask? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerFullTypeMask(
      maskPosition:
          MaskPosition.fromJson(json['mask_position'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'mask_position': maskPosition?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StickerFullTypeMask &&
          const DeepCollectionEquality()
              .equals(other.maskPosition, maskPosition));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(maskPosition)]);
}
