// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Posts a new story on behalf of a chat; requires can_post_stories
/// administrator right for supergroup and channel chats. Returns a temporary
/// story
/// Returns [Story]
@immutable
class PostStory extends TdFunction {
  const PostStory({
    required this.chatId,
    required this.content,
    this.areas,
    this.caption,
    required this.privacySettings,
    required this.albumIds,
    required this.activePeriod,
    this.fromStoryFullId,
    required this.isPostedToChatPage,
    required this.protectContent,
  });

  /// [chatId] Identifier of the chat that will post the story. Pass Saved
  /// Messages chat identifier when posting a story on behalf of the current
  /// user
  final int chatId;

  /// [content] Content of the story
  final InputStoryContent content;

  /// [areas] Clickable rectangle areas to be shown on the story media; pass
  /// null if none
  final InputStoryAreas? areas;

  /// [caption] Story caption; pass null to use an empty caption;
  /// 0-getOption("story_caption_length_max") characters; can have entities only
  /// if getOption("can_use_text_entities_in_story_caption")
  final FormattedText? caption;

  /// [privacySettings] The privacy settings for the story; ignored for stories
  /// posted on behalf of supergroup and channel chats
  final StoryPrivacySettings privacySettings;

  /// [albumIds] Identifiers of story albums to which the story will be added
  /// upon posting. An album can have up to getOption("story_album_size_max")
  /// stories
  final List<int> albumIds;

  /// [activePeriod] Period after which the story is moved to archive, in
  /// seconds; must be one of 6 * 3600, 12 * 3600, 86400, or 2 * 86400 for
  /// Telegram Premium users, and 86400 otherwise
  final int activePeriod;

  /// [fromStoryFullId] Full identifier of the original story, which content was
  /// used to create the story; pass null if the story isn't repost of another
  /// story
  final StoryFullId? fromStoryFullId;

  /// [isPostedToChatPage] Pass true to keep the story accessible after
  /// expiration
  final bool isPostedToChatPage;

  /// [protectContent] Pass true if the content of the story must be protected
  /// from forwarding and screenshotting
  final bool protectContent;

  static const String constructor = 'postStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'content': content.toJson(),
        'areas': areas?.toJson(),
        'caption': caption?.toJson(),
        'privacy_settings': privacySettings.toJson(),
        'album_ids': albumIds.map((item) => item).toList(),
        'active_period': activePeriod,
        'from_story_full_id': fromStoryFullId?.toJson(),
        'is_posted_to_chat_page': isPostedToChatPage,
        'protect_content': protectContent,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PostStory &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality().equals(other.content, content) &&
          const DeepCollectionEquality().equals(other.areas, areas) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality()
              .equals(other.privacySettings, privacySettings) &&
          const DeepCollectionEquality().equals(other.albumIds, albumIds) &&
          const DeepCollectionEquality()
              .equals(other.activePeriod, activePeriod) &&
          const DeepCollectionEquality()
              .equals(other.fromStoryFullId, fromStoryFullId) &&
          const DeepCollectionEquality()
              .equals(other.isPostedToChatPage, isPostedToChatPage) &&
          const DeepCollectionEquality()
              .equals(other.protectContent, protectContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(content),
        const DeepCollectionEquality().hash(areas),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(privacySettings),
        const DeepCollectionEquality().hash(albumIds),
        const DeepCollectionEquality().hash(activePeriod),
        const DeepCollectionEquality().hash(fromStoryFullId),
        const DeepCollectionEquality().hash(isPostedToChatPage),
        const DeepCollectionEquality().hash(protectContent)
      ]);
}
