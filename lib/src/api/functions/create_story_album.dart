import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates an album of stories; requires can_edit_stories administrator right
/// for supergroup and channel chats
/// Returns [StoryAlbum]
@immutable
class CreateStoryAlbum extends TdFunction {
  const CreateStoryAlbum({
    required this.storyPosterChatId,
    required this.name,
    required this.storyIds,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the stories
  final int storyPosterChatId;

  /// [name] Name of the album; 1-12 characters
  final String name;

  /// [storyIds] Identifiers of stories to add to the album;
  /// 0-getOption("story_album_size_max") identifiers
  final List<int> storyIds;

  static const String constructor = 'createStoryAlbum';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_poster_chat_id': storyPosterChatId,
        'name': name,
        'story_ids': storyIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
