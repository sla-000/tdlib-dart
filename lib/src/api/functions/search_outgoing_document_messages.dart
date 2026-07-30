// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches for outgoing messages with content of the type messageDocument in
/// all chats except secret chats. Returns the results in reverse
/// chronological order
/// Returns [FoundMessages]
@immutable
class SearchOutgoingDocumentMessages extends TdFunction {
  const SearchOutgoingDocumentMessages({
    required this.query,
    required this.limit,
  });

  /// [query] Query to search for in document file name and message caption
  final String query;

  /// [limit] The maximum number of messages to be returned; up to 100
  final int limit;

  static const String constructor = 'searchOutgoingDocumentMessages';

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
          other is SearchOutgoingDocumentMessages &&
          const DeepCollectionEquality().equals(other.query, query) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(query),
        const DeepCollectionEquality().hash(limit)
      ]);
}
