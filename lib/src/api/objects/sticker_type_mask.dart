// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The sticker is a mask in WEBP format to be placed on photos or videos
@immutable
class StickerTypeMask extends StickerType {
  const StickerTypeMask();

  static const String constructor = 'stickerTypeMask';

  static StickerTypeMask? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StickerTypeMask();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is StickerTypeMask);

  @override
  int get hashCode => runtimeType.hashCode;
}
