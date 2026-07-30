// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds stories to the beginning of a previously created story album. If the
/// album is owned by a supergroup or a channel chat, then requires
/// can_edit_stories administrator right in the chat. Returns the changed
/// album
/// Returns [StoryAlbum]
@immutable
class AddStoryAlbumStories extends TdFunction {
  const AddStoryAlbumStories({
    required this.chatId,
    required this.storyAlbumId,
    required this.storyIds,
  });

  /// [chatId] Identifier of the chat that owns the stories
  final int chatId;

  /// [storyAlbumId] Identifier of the story album
  final int storyAlbumId;

  /// [storyIds] Identifier of the stories to add to the album;
  /// 1-getOption("story_album_size_max") identifiers. If after addition the
  /// album has more than getOption("story_album_size_max") stories, then the
  /// last one are removed from the album
  final List<int> storyIds;

  static const String constructor = 'addStoryAlbumStories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'story_album_id': storyAlbumId,
        'story_ids': storyIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddStoryAlbumStories &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.storyAlbumId, storyAlbumId) &&
          const DeepCollectionEquality().equals(other.storyIds, storyIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(storyAlbumId),
        const DeepCollectionEquality().hash(storyIds)
      ]);
}
