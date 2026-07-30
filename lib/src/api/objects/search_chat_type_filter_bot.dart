import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
