// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches for sticker sets by looking for specified query in their title
/// and name. Excludes installed sticker sets from the results
/// Returns [StickerSets]
@immutable
class SearchStickerSets extends TdFunction {
  const SearchStickerSets({
    required this.stickerType,
    required this.query,
  });

  /// [stickerType] Type of the sticker sets to return
  final StickerType stickerType;

  /// [query] Query to search for
  final String query;

  static const String constructor = 'searchStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_type': stickerType.toJson(),
        'query': query,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchStickerSets &&
          const DeepCollectionEquality()
              .equals(other.stickerType, stickerType) &&
          const DeepCollectionEquality().equals(other.query, query));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(stickerType),
        const DeepCollectionEquality().hash(query)
      ]);
}
