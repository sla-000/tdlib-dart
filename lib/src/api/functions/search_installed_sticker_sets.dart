// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches for installed sticker sets by looking for specified query in
/// their title and name
/// Returns [StickerSets]
@immutable
class SearchInstalledStickerSets extends TdFunction {
  const SearchInstalledStickerSets({
    required this.stickerType,
    required this.query,
    required this.limit,
  });

  /// [stickerType] Type of the sticker sets to search for
  final StickerType stickerType;

  /// [query] Query to search for
  final String query;

  /// [limit] The maximum number of sticker sets to return
  final int limit;

  static const String constructor = 'searchInstalledStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_type': stickerType.toJson(),
        'query': query,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchInstalledStickerSets &&
          const DeepCollectionEquality()
              .equals(other.stickerType, stickerType) &&
          const DeepCollectionEquality().equals(other.query, query) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(stickerType),
        const DeepCollectionEquality().hash(query),
        const DeepCollectionEquality().hash(limit)
      ]);
}
