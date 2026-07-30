import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only messages with unread poll votes for the current user. When
/// using this filter the results can't be additionally filtered by a query or
/// by the sending user
@immutable
class SearchMessagesFilterUnreadPollVote extends SearchMessagesFilter {
  const SearchMessagesFilterUnreadPollVote();

  static const String constructor = 'searchMessagesFilterUnreadPollVote';

  static SearchMessagesFilterUnreadPollVote? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterUnreadPollVote();
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
