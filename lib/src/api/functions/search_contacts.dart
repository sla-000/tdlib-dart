// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches for the specified query in the first names, last names and
/// usernames of the known user contacts
/// Returns [Users]
@immutable
class SearchContacts extends TdFunction {
  const SearchContacts({
    required this.query,
    required this.limit,
  });

  /// [query] Query to search for; may be empty to return all contacts
  final String query;

  /// [limit] The maximum number of users to be returned
  final int limit;

  static const String constructor = 'searchContacts';

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
          other is SearchContacts &&
          const DeepCollectionEquality().equals(other.query, query) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(query),
        const DeepCollectionEquality().hash(limit)
      ]);
}
