// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A sticker set has changed
@immutable
class UpdateStickerSet extends Update {
  const UpdateStickerSet({
    required this.stickerSet,
  });

  /// [stickerSet] The sticker set
  final StickerSet stickerSet;

  static const String constructor = 'updateStickerSet';

  static UpdateStickerSet? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStickerSet(
      stickerSet:
          StickerSet.fromJson(json['sticker_set'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_set': stickerSet.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateStickerSet &&
          const DeepCollectionEquality().equals(other.stickerSet, stickerSet));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(stickerSet)]);
}
