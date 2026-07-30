// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns only messages in basic group and supergroup chats
@immutable
class SearchMessagesChatTypeFilterGroup extends SearchMessagesChatTypeFilter {
  const SearchMessagesChatTypeFilterGroup();

  static const String constructor = 'searchMessagesChatTypeFilterGroup';

  static SearchMessagesChatTypeFilterGroup? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesChatTypeFilterGroup();
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
          other is SearchMessagesChatTypeFilterGroup);

  @override
  int get hashCode => runtimeType.hashCode;
}
