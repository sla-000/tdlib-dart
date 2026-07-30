import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only channel chats
@immutable
class SearchChatTypeFilterChannel extends SearchChatTypeFilter {
  const SearchChatTypeFilterChannel();

  static const String constructor = 'searchChatTypeFilterChannel';

  static SearchChatTypeFilterChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchChatTypeFilterChannel();
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
