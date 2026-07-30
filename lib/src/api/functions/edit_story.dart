// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes content and caption of a story. Can be called only if
/// story.can_be_edited == true
/// Returns [Ok]
@immutable
class EditStory extends TdFunction {
  const EditStory({
    required this.storyPosterChatId,
    required this.storyId,
    this.content,
    this.areas,
    this.caption,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Identifier of the story to edit
  final int storyId;

  /// [content] New content of the story; pass null to keep the current content
  final InputStoryContent? content;

  /// [areas] New clickable rectangle areas to be shown on the story media; pass
  /// null to keep the current areas. Areas can't be edited if story content
  /// isn't changed
  final InputStoryAreas? areas;

  /// [caption] New story caption; pass null to keep the current caption
  final FormattedText? caption;

  static const String constructor = 'editStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_poster_chat_id': storyPosterChatId,
        'story_id': storyId,
        'content': content?.toJson(),
        'areas': areas?.toJson(),
        'caption': caption?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditStory &&
          const DeepCollectionEquality()
              .equals(other.storyPosterChatId, storyPosterChatId) &&
          const DeepCollectionEquality().equals(other.storyId, storyId) &&
          const DeepCollectionEquality().equals(other.content, content) &&
          const DeepCollectionEquality().equals(other.areas, areas) &&
          const DeepCollectionEquality().equals(other.caption, caption));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(storyPosterChatId),
        const DeepCollectionEquality().hash(storyId),
        const DeepCollectionEquality().hash(content),
        const DeepCollectionEquality().hash(areas),
        const DeepCollectionEquality().hash(caption)
      ]);
}
