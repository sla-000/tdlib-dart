// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches for public channel posts using the given query. For optimal
/// performance, the number of returned messages is chosen by TDLib and can be
/// smaller than the specified limit
/// Returns [FoundPublicPosts]
@immutable
class SearchPublicPosts extends TdFunction {
  const SearchPublicPosts({
    required this.query,
    required this.offset,
    required this.limit,
    required this.starCount,
  });

  /// [query] Query to search for
  final String query;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of messages to be returned; up to 100. For
  /// optimal performance, the number of returned messages is chosen by TDLib
  /// and can be smaller than the specified limit
  final int limit;

  /// [starCount] The Telegram Star amount the user agreed to pay for the
  /// search; pass 0 for free searches
  final int starCount;

  static const String constructor = 'searchPublicPosts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query': query,
        'offset': offset,
        'limit': limit,
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchPublicPosts &&
          const DeepCollectionEquality().equals(other.query, query) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit) &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(query),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit),
        const DeepCollectionEquality().hash(starCount)
      ]);
}
