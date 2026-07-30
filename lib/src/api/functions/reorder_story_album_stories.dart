import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes order of stories in an album. If the album is owned by a
/// supergroup or a channel chat, then requires can_edit_stories administrator
/// right in the chat. Returns the changed album
/// Returns [StoryAlbum]
@immutable
class ReorderStoryAlbumStories extends TdFunction {
  const ReorderStoryAlbumStories({
    required this.chatId,
    required this.storyAlbumId,
    required this.storyIds,
  });

  /// [chatId] Identifier of the chat that owns the stories
  final int chatId;

  /// [storyAlbumId] Identifier of the story album
  final int storyAlbumId;

  /// [storyIds] Identifier of the stories to move to the beginning of the
  /// album. All other stories are placed in the current order after the
  /// specified stories
  final List<int> storyIds;

  static const String constructor = 'reorderStoryAlbumStories';

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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
