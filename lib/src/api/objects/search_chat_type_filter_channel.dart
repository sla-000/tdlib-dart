// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchChatTypeFilterChannel);

  @override
  int get hashCode => runtimeType.hashCode;
}
