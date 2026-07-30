// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A sticker to be sent
@immutable
class InputSticker extends TdObject {
  const InputSticker({
    required this.sticker,
    this.thumbnail,
    required this.width,
    required this.height,
  });

  /// [sticker] Sticker to be sent
  final InputFile sticker;

  /// [thumbnail] Sticker thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [width] Sticker width
  final int width;

  /// [height] Sticker height
  final int height;

  static const String constructor = 'inputSticker';

  static InputSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputSticker(
      sticker: InputFile.fromJson(json['sticker'] as Map<String, dynamic>?)!,
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'width': width,
        'height': height,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputSticker &&
          const DeepCollectionEquality().equals(other.sticker, sticker) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(sticker),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height)
      ]);
}
