// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Searches for public stories containing the given hashtag or cashtag. For
/// optimal performance, the number of returned stories is chosen by TDLib and
/// can be smaller than the specified limit
/// Returns [FoundStories]
@immutable
class SearchPublicStoriesByTag extends TdFunction {
  const SearchPublicStoriesByTag({
    required this.storyPosterChatId,
    required this.tag,
    required this.offset,
    required this.limit,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the stories to
  /// search for; pass 0 to search stories in all chats
  final int storyPosterChatId;

  /// [tag] Hashtag or cashtag to search for
  final String tag;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of stories to be returned; up to 100. For
  /// optimal performance, the number of returned stories is chosen by TDLib and
  /// can be smaller than the specified limit
  final int limit;

  static const String constructor = 'searchPublicStoriesByTag';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_poster_chat_id': storyPosterChatId,
        'tag': tag,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SearchPublicStoriesByTag &&
          const DeepCollectionEquality()
              .equals(other.storyPosterChatId, storyPosterChatId) &&
          const DeepCollectionEquality().equals(other.tag, tag) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(storyPosterChatId),
        const DeepCollectionEquality().hash(tag),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit)
      ]);
}
