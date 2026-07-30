// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A sticker message
@immutable
class InputMessageSticker extends InputMessageContent {
  const InputMessageSticker({
    required this.sticker,
    this.thumbnail,
    required this.width,
    required this.height,
    required this.emoji,
  });

  /// [sticker] Sticker to be sent
  final InputFile sticker;

  /// [thumbnail] Sticker thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [width] Sticker width
  final int width;

  /// [height] Sticker height
  final int height;

  /// [emoji] Emoji used to choose the sticker
  final String emoji;

  static const String constructor = 'inputMessageSticker';

  static InputMessageSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageSticker(
      sticker: InputFile.fromJson(json['sticker'] as Map<String, dynamic>?)!,
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      width: json['width'] as int,
      height: json['height'] as int,
      emoji: json['emoji'] as String,
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
        'emoji': emoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputMessageSticker &&
          const DeepCollectionEquality().equals(other.sticker, sticker) &&
          const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
          const DeepCollectionEquality().equals(other.width, width) &&
          const DeepCollectionEquality().equals(other.height, height) &&
          const DeepCollectionEquality().equals(other.emoji, emoji));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(sticker),
        const DeepCollectionEquality().hash(thumbnail),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(height),
        const DeepCollectionEquality().hash(emoji)
      ]);
}
