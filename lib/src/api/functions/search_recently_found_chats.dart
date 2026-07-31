// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches for the specified query in the title and username of up to 50
/// recently found chats. This is an offline method
/// Returns [Chats]
@immutable
class SearchRecentlyFoundChats extends TdFunction {
  const SearchRecentlyFoundChats({
    required this.query,
    required this.limit,
  });

  /// [query] Query to search for
  final String query;

  /// [limit] The maximum number of chats to be returned
  final int limit;

  static const String constructor = 'searchRecentlyFoundChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query': query,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchRecentlyFoundChats &&
          const DeepCollectionEquality().equals(other.query, query) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(query),
        const DeepCollectionEquality().hash(limit)
      ]);
}
