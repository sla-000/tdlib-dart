// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns a list of trending sticker sets. For optimal performance, the
/// number of returned sticker sets is chosen by TDLib
/// Returns [TrendingStickerSets]
@immutable
class GetTrendingStickerSets extends TdFunction {
  const GetTrendingStickerSets({
    required this.stickerType,
    required this.offset,
    required this.limit,
  });

  /// [stickerType] Type of the sticker sets to return
  final StickerType stickerType;

  /// [offset] The offset from which to return the sticker sets; must be
  /// non-negative
  final int offset;

  /// [limit] The maximum number of sticker sets to be returned; up to 100. For
  /// optimal performance, the number of returned sticker sets is chosen by
  /// TDLib and can be smaller than the specified limit, even if the end of the
  /// list has not been reached
  final int limit;

  static const String constructor = 'getTrendingStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_type': stickerType.toJson(),
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetTrendingStickerSets &&
          const DeepCollectionEquality()
              .equals(other.stickerType, stickerType) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(stickerType),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit)
      ]);
}
