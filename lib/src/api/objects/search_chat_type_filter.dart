// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a filter for type of the chats to search for
@immutable
abstract class SearchChatTypeFilter extends TdObject {
  const SearchChatTypeFilter();

  static const String constructor = 'searchChatTypeFilter';

  /// Inherited by:
  /// [SearchChatTypeFilterBot]
  /// [SearchChatTypeFilterChannel]
  static SearchChatTypeFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SearchChatTypeFilterBot.constructor:
        return SearchChatTypeFilterBot.fromJson(json);
      case SearchChatTypeFilterChannel.constructor:
        return SearchChatTypeFilterChannel.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is SearchChatTypeFilter);

  @override
  int get hashCode => runtimeType.hashCode;
}
