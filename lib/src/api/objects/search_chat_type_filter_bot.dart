// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns only private chats with bots
@immutable
class SearchChatTypeFilterBot extends SearchChatTypeFilter {
  const SearchChatTypeFilterBot();

  static const String constructor = 'searchChatTypeFilterBot';

  static SearchChatTypeFilterBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchChatTypeFilterBot();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is SearchChatTypeFilterBot);

  @override
  int get hashCode => runtimeType.hashCode;
}
