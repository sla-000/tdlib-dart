// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes active stories posted by a chat
@immutable
class ChatActiveStories extends TdObject {
  const ChatActiveStories({
    required this.chatId,
    this.list,
    required this.order,
    required this.canBeArchived,
    required this.maxReadStoryId,
    required this.stories,
  });

  /// [chatId] Identifier of the chat that posted the stories
  final int chatId;

  /// [list] Identifier of the story list in which the stories are shown; may be
  /// null if the stories aren't shown in a story list
  final StoryList? list;

  /// [order] A parameter used to determine order of the stories in the story
  /// list; 0 if the stories don't need to be shown in the story list. Stories
  /// must be sorted by the pair (order, story_poster_chat_id) in descending
  /// order
  final int order;

  /// [canBeArchived] True, if the stories are shown in the main story list and
  /// can be archived; otherwise, the stories can be hidden from the main story
  /// list only by calling removeTopChat with topChatCategoryUsers and the
  /// chat_id. Stories of the current user can't be archived nor hidden using
  /// removeTopChat
  final bool canBeArchived;

  /// [maxReadStoryId] Identifier of the last read active story
  final int maxReadStoryId;

  /// [stories] Basic information about the stories; use getStory to get full
  /// information about the stories. The stories are in chronological order
  /// (i.e., in order of increasing story identifiers)
  final List<StoryInfo> stories;

  static const String constructor = 'chatActiveStories';

  static ChatActiveStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActiveStories(
      chatId: (json['chat_id'] as int?) ?? 0,
      list: StoryList.fromJson(json['list'] as Map<String, dynamic>?),
      order: (json['order'] as int?) ?? 0,
      canBeArchived: (json['can_be_archived'] as bool?) ?? false,
      maxReadStoryId: (json['max_read_story_id'] as int?) ?? 0,
      stories: List<StoryInfo>.from(
          ((json['stories'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => StoryInfo.fromJson(item as Map<String, dynamic>?))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'list': list?.toJson(),
        'order': order,
        'can_be_archived': canBeArchived,
        'max_read_story_id': maxReadStoryId,
        'stories': stories.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatActiveStories &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.list, list) &&
          const DeepCollectionEquality().equals(other.order, order) &&
          const DeepCollectionEquality()
              .equals(other.canBeArchived, canBeArchived) &&
          const DeepCollectionEquality()
              .equals(other.maxReadStoryId, maxReadStoryId) &&
          const DeepCollectionEquality().equals(other.stories, stories));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(list),
        const DeepCollectionEquality().hash(order),
        const DeepCollectionEquality().hash(canBeArchived),
        const DeepCollectionEquality().hash(maxReadStoryId),
        const DeepCollectionEquality().hash(stories)
      ]);
}
