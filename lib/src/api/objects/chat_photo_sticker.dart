// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Information about the sticker, which was used to create the chat photo.
/// The sticker is shown at the center of the photo and occupies at most 67%
/// of it
@immutable
class ChatPhotoSticker extends TdObject {
  const ChatPhotoSticker({
    required this.type,
    required this.backgroundFill,
  });

  /// [type] Type of the sticker
  final ChatPhotoStickerType type;

  /// [backgroundFill] The fill to be used as background for the sticker;
  /// rotation angle in backgroundFillGradient isn't supported
  final BackgroundFill backgroundFill;

  static const String constructor = 'chatPhotoSticker';

  static ChatPhotoSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPhotoSticker(
      type:
          ChatPhotoStickerType.fromJson(json['type'] as Map<String, dynamic>?)!,
      backgroundFill: BackgroundFill.fromJson(
          json['background_fill'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'background_fill': backgroundFill.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatPhotoSticker &&
          const DeepCollectionEquality().equals(other.type, type) &&
          const DeepCollectionEquality()
              .equals(other.backgroundFill, backgroundFill));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(backgroundFill)
      ]);
}
