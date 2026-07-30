// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The sticker is a regular sticker
@immutable
class StickerTypeRegular extends StickerType {
  const StickerTypeRegular();

  static const String constructor = 'stickerTypeRegular';

  static StickerTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StickerTypeRegular();
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
      (other.runtimeType == runtimeType && other is StickerTypeRegular);

  @override
  int get hashCode => runtimeType.hashCode;
}
