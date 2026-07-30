// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes a story posted by the bot on behalf of a business account; for
/// bots only
/// Returns [Story]
@immutable
class EditBusinessStory extends TdFunction {
  const EditBusinessStory({
    required this.storyPosterChatId,
    required this.storyId,
    required this.content,
    required this.areas,
    required this.caption,
    required this.privacySettings,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Identifier of the story to edit
  final int storyId;

  /// [content] New content of the story
  final InputStoryContent content;

  /// [areas] New clickable rectangle areas to be shown on the story media
  final InputStoryAreas areas;

  /// [caption] New story caption
  final FormattedText caption;

  /// [privacySettings] The new privacy settings for the story
  final StoryPrivacySettings privacySettings;

  static const String constructor = 'editBusinessStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_poster_chat_id': storyPosterChatId,
        'story_id': storyId,
        'content': content.toJson(),
        'areas': areas.toJson(),
        'caption': caption.toJson(),
        'privacy_settings': privacySettings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditBusinessStory &&
          const DeepCollectionEquality()
              .equals(other.storyPosterChatId, storyPosterChatId) &&
          const DeepCollectionEquality().equals(other.storyId, storyId) &&
          const DeepCollectionEquality().equals(other.content, content) &&
          const DeepCollectionEquality().equals(other.areas, areas) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality()
              .equals(other.privacySettings, privacySettings));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(storyPosterChatId),
        const DeepCollectionEquality().hash(storyId),
        const DeepCollectionEquality().hash(content),
        const DeepCollectionEquality().hash(areas),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(privacySettings)
      ]);
}
