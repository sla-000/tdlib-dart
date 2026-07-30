// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches public chats by looking for specified query in their username and
/// title. Currently, only private chats, supergroups and channels can be
/// public. Returns a meaningful number of results. Excludes private chats
/// with contacts and chats from the chat list from the results
/// Returns [Chats]
@immutable
class SearchPublicChats extends TdFunction {
  const SearchPublicChats({
    required this.query,
    this.typeFilter,
  });

  /// [query] Query to search for
  final String query;

  /// [typeFilter] Additional filter for type of the chats to be returned; pass
  /// null to search for chats of all types
  final SearchChatTypeFilter? typeFilter;

  static const String constructor = 'searchPublicChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query': query,
        'type_filter': typeFilter?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchPublicChats &&
          const DeepCollectionEquality().equals(other.query, query) &&
          const DeepCollectionEquality().equals(other.typeFilter, typeFilter));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(query),
        const DeepCollectionEquality().hash(typeFilter)
      ]);
}
