// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The list of favorite stickers was updated
@immutable
class UpdateFavoriteStickers extends Update {
  const UpdateFavoriteStickers({
    required this.stickerIds,
  });

  /// [stickerIds] The new list of file identifiers of favorite stickers
  final List<int> stickerIds;

  static const String constructor = 'updateFavoriteStickers';

  static UpdateFavoriteStickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFavoriteStickers(
      stickerIds: List<int>.from(
          ((json['sticker_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_ids': stickerIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateFavoriteStickers &&
          const DeepCollectionEquality().equals(other.stickerIds, stickerIds));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(stickerIds)]);
}
