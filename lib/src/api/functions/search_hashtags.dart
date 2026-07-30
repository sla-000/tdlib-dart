// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches for recently used hashtags by their prefix
/// Returns [Hashtags]
@immutable
class SearchHashtags extends TdFunction {
  const SearchHashtags({
    required this.prefix,
    required this.limit,
  });

  /// [prefix] Hashtag prefix to search for
  final String prefix;

  /// [limit] The maximum number of hashtags to be returned
  final int limit;

  static const String constructor = 'searchHashtags';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'prefix': prefix,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchHashtags &&
          const DeepCollectionEquality().equals(other.prefix, prefix) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(prefix),
        const DeepCollectionEquality().hash(limit)
      ]);
}
