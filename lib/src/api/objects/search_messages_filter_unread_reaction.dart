// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns only messages with unread reactions for the current user. When
/// using this filter the results can't be additionally filtered by a query or
/// by the sending user
@immutable
class SearchMessagesFilterUnreadReaction extends SearchMessagesFilter {
  const SearchMessagesFilterUnreadReaction();

  static const String constructor = 'searchMessagesFilterUnreadReaction';

  static SearchMessagesFilterUnreadReaction? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterUnreadReaction();
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
          other is SearchMessagesFilterUnreadReaction);

  @override
  int get hashCode => runtimeType.hashCode;
}
