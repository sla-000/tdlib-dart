// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A URL linking to a sticker set
@immutable
class TMeUrlTypeStickerSet extends TMeUrlType {
  const TMeUrlTypeStickerSet({
    required this.stickerSetId,
  });

  /// [stickerSetId] Identifier of the sticker set
  final int stickerSetId;

  static const String constructor = 'tMeUrlTypeStickerSet';

  static TMeUrlTypeStickerSet? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrlTypeStickerSet(
      stickerSetId: (json['sticker_set_id'] is int
              ? json['sticker_set_id'] as int
              : int.tryParse(json['sticker_set_id']?.toString() ?? '')) ??
          0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_set_id': stickerSetId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TMeUrlTypeStickerSet &&
          const DeepCollectionEquality()
              .equals(other.stickerSetId, stickerSetId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(stickerSetId)]);
}
