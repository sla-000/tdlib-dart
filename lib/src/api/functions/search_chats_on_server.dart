// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches for the specified query in the title and username of already
/// known chats via request to the server. Returns chats in the order seen in
/// the main chat list
/// Returns [Chats]
@immutable
class SearchChatsOnServer extends TdFunction {
  const SearchChatsOnServer({
    required this.query,
    this.typeFilter,
    required this.limit,
  });

  /// [query] Query to search for
  final String query;

  /// [typeFilter] Additional filter for type of the chats to be returned; pass
  /// null to search for chats of all types
  final SearchChatTypeFilter? typeFilter;

  /// [limit] The maximum number of chats to be returned
  final int limit;

  static const String constructor = 'searchChatsOnServer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query': query,
        'type_filter': typeFilter?.toJson(),
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchChatsOnServer &&
          const DeepCollectionEquality().equals(other.query, query) &&
          const DeepCollectionEquality().equals(other.typeFilter, typeFilter) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(query),
        const DeepCollectionEquality().hash(typeFilter),
        const DeepCollectionEquality().hash(limit)
      ]);
}
