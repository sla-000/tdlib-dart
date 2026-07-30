// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The list of recently used stickers was updated
@immutable
class UpdateRecentStickers extends Update {
  const UpdateRecentStickers({
    required this.isAttached,
    required this.stickerIds,
  });

  /// [isAttached] True, if the list of stickers attached to photo or video
  /// files was updated; otherwise, the list of sent stickers is updated
  final bool isAttached;

  /// [stickerIds] The new list of file identifiers of recently used stickers
  final List<int> stickerIds;

  static const String constructor = 'updateRecentStickers';

  static UpdateRecentStickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateRecentStickers(
      isAttached: (json['is_attached'] as bool?) ?? false,
      stickerIds: List<int>.from(
          ((json['sticker_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  (item is int ? item : int.tryParse(item.toString()) ?? 0))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_attached': isAttached,
        'sticker_ids': stickerIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateRecentStickers &&
          const DeepCollectionEquality().equals(other.isAttached, isAttached) &&
          const DeepCollectionEquality().equals(other.stickerIds, stickerIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isAttached),
        const DeepCollectionEquality().hash(stickerIds)
      ]);
}
