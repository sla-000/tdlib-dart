// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A sticker on a custom background
@immutable
class InputChatPhotoSticker extends InputChatPhoto {
  const InputChatPhotoSticker({
    required this.sticker,
  });

  /// [sticker] Information about the sticker
  final ChatPhotoSticker sticker;

  static const String constructor = 'inputChatPhotoSticker';

  static InputChatPhotoSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChatPhotoSticker(
      sticker:
          ChatPhotoSticker.fromJson(json['sticker'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputChatPhotoSticker &&
          const DeepCollectionEquality().equals(other.sticker, sticker));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(sticker)]);
}
