import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
