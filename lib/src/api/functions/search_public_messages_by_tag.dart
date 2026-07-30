// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches for public channel posts containing the given hashtag or cashtag.
/// For optimal performance, the number of returned messages is chosen by
/// TDLib and can be smaller than the specified limit
/// Returns [FoundMessages]
@immutable
class SearchPublicMessagesByTag extends TdFunction {
  const SearchPublicMessagesByTag({
    required this.tag,
    required this.offset,
    required this.limit,
  });

  /// [tag] Hashtag or cashtag to search for
  final String tag;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of messages to be returned; up to 100. For
  /// optimal performance, the number of returned messages is chosen by TDLib
  /// and can be smaller than the specified limit
  final int limit;

  static const String constructor = 'searchPublicMessagesByTag';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'tag': tag,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchPublicMessagesByTag &&
          const DeepCollectionEquality().equals(other.tag, tag) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(tag),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit)
      ]);
}
