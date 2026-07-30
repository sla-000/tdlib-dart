// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a list of archived sticker sets
/// Returns [StickerSets]
@immutable
class GetArchivedStickerSets extends TdFunction {
  const GetArchivedStickerSets({
    required this.stickerType,
    required this.offsetStickerSetId,
    required this.limit,
  });

  /// [stickerType] Type of the sticker sets to return
  final StickerType stickerType;

  /// [offsetStickerSetId] Identifier of the sticker set from which to return
  /// the result; use 0 to get results from the beginning
  final int offsetStickerSetId;

  /// [limit] The maximum number of sticker sets to return; up to 100
  final int limit;

  static const String constructor = 'getArchivedStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_type': stickerType.toJson(),
        'offset_sticker_set_id': offsetStickerSetId,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetArchivedStickerSets &&
          const DeepCollectionEquality()
              .equals(other.stickerType, stickerType) &&
          const DeepCollectionEquality()
              .equals(other.offsetStickerSetId, offsetStickerSetId) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(stickerType),
        const DeepCollectionEquality().hash(offsetStickerSetId),
        const DeepCollectionEquality().hash(limit)
      ]);
}
