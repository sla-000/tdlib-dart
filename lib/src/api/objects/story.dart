// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a story
@immutable
class Story extends TdObject {
  const Story({
    required this.id,
    required this.posterChatId,
    this.posterId,
    required this.date,
    required this.isBeingPosted,
    required this.isBeingEdited,
    required this.isEdited,
    required this.isPostedToChatPage,
    required this.isVisibleOnlyForSelf,
    required this.canBeAddedToAlbum,
    required this.canBeDeleted,
    required this.canBeEdited,
    required this.canBeForwarded,
    required this.canBeReplied,
    required this.canSetPrivacySettings,
    required this.canToggleIsPostedToChatPage,
    required this.canGetStatistics,
    required this.canGetInteractions,
    required this.hasExpiredViewers,
    this.repostInfo,
    this.interactionInfo,
    this.chosenReactionType,
    required this.privacySettings,
    required this.content,
    required this.areas,
    required this.caption,
    required this.albumIds,
  });

  /// [id] Unique story identifier among stories posted by the given chat
  final int id;

  /// [posterChatId] Identifier of the chat that posted the story
  final int posterChatId;

  /// [posterId] Identifier of the user or chat that posted the story; may be
  /// null if the story is posted on behalf of the poster_chat_id
  final MessageSender? posterId;

  /// [date] Point in time (Unix timestamp) when the story was published
  final int date;

  /// [isBeingPosted] True, if the story is being posted by the current user
  final bool isBeingPosted;

  /// [isBeingEdited] True, if the story is being edited by the current user
  final bool isBeingEdited;

  /// [isEdited] True, if the story was edited
  final bool isEdited;

  /// [isPostedToChatPage] True, if the story is saved in the profile of the
  /// chat that posted it and will be available there after expiration
  final bool isPostedToChatPage;

  /// [isVisibleOnlyForSelf] True, if the story is visible only for the current
  /// user
  final bool isVisibleOnlyForSelf;

  /// [canBeAddedToAlbum] True, if the story can be added to an album using
  /// createStoryAlbum and addStoryAlbumStories
  final bool canBeAddedToAlbum;

  /// [canBeDeleted] True, if the story can be deleted
  final bool canBeDeleted;

  /// [canBeEdited] True, if the story can be edited
  final bool canBeEdited;

  /// [canBeForwarded] True, if the story can be forwarded as a message or
  /// reposted as a story. Otherwise, screenshotting and saving of the story
  /// content must be also forbidden
  final bool canBeForwarded;

  /// [canBeReplied] True, if the story can be replied in the chat with the user
  /// who posted the story
  final bool canBeReplied;

  /// [canSetPrivacySettings] True, if the story privacy settings can be changed
  final bool canSetPrivacySettings;

  /// [canToggleIsPostedToChatPage] True, if the story's is_posted_to_chat_page
  /// value can be changed
  final bool canToggleIsPostedToChatPage;

  /// [canGetStatistics] True, if the story statistics are available through
  /// getStoryStatistics
  final bool canGetStatistics;

  /// [canGetInteractions] True, if interactions with the story can be received
  /// through getStoryInteractions
  final bool canGetInteractions;

  /// [hasExpiredViewers] True, if users viewed the story can't be received,
  /// because the story has expired more than
  /// getOption("story_viewers_expiration_delay") seconds ago
  final bool hasExpiredViewers;

  /// [repostInfo] Information about the original story; may be null if the
  /// story wasn't reposted
  final StoryRepostInfo? repostInfo;

  /// [interactionInfo] Information about interactions with the story; may be
  /// null if the story isn't owned or there were no interactions
  final StoryInteractionInfo? interactionInfo;

  /// [chosenReactionType] Type of the chosen reaction; may be null if none
  final ReactionType? chosenReactionType;

  /// [privacySettings] Privacy rules affecting story visibility; may be
  /// approximate for non-owned stories
  final StoryPrivacySettings privacySettings;

  /// [content] Content of the story
  final StoryContent content;

  /// [areas] Clickable areas to be shown on the story content
  final List<StoryArea> areas;

  /// [caption] Caption of the story
  final FormattedText caption;

  /// [albumIds] Identifiers of story albums to which the story is added; only
  /// for manageable stories
  final List<int> albumIds;

  static const String constructor = 'story';

  static Story? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Story(
      id: json['id'] as int,
      posterChatId: json['poster_chat_id'] as int,
      posterId:
          MessageSender.fromJson(json['poster_id'] as Map<String, dynamic>?),
      date: json['date'] as int,
      isBeingPosted: json['is_being_posted'] as bool,
      isBeingEdited: json['is_being_edited'] as bool,
      isEdited: json['is_edited'] as bool,
      isPostedToChatPage: json['is_posted_to_chat_page'] as bool,
      isVisibleOnlyForSelf: json['is_visible_only_for_self'] as bool,
      canBeAddedToAlbum: json['can_be_added_to_album'] as bool,
      canBeDeleted: json['can_be_deleted'] as bool,
      canBeEdited: json['can_be_edited'] as bool,
      canBeForwarded: json['can_be_forwarded'] as bool,
      canBeReplied: json['can_be_replied'] as bool,
      canSetPrivacySettings: json['can_set_privacy_settings'] as bool,
      canToggleIsPostedToChatPage:
          json['can_toggle_is_posted_to_chat_page'] as bool,
      canGetStatistics: json['can_get_statistics'] as bool,
      canGetInteractions: json['can_get_interactions'] as bool,
      hasExpiredViewers: json['has_expired_viewers'] as bool,
      repostInfo: StoryRepostInfo.fromJson(
          json['repost_info'] as Map<String, dynamic>?),
      interactionInfo: StoryInteractionInfo.fromJson(
          json['interaction_info'] as Map<String, dynamic>?),
      chosenReactionType: ReactionType.fromJson(
          json['chosen_reaction_type'] as Map<String, dynamic>?),
      privacySettings: StoryPrivacySettings.fromJson(
          json['privacy_settings'] as Map<String, dynamic>?)!,
      content: StoryContent.fromJson(json['content'] as Map<String, dynamic>?)!,
      areas: List<StoryArea>.from(
          ((json['areas'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => StoryArea.fromJson(item))
              .toList()),
      caption:
          FormattedText.fromJson(json['caption'] as Map<String, dynamic>?)!,
      albumIds: List<int>.from(
          ((json['album_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'poster_chat_id': posterChatId,
        'poster_id': posterId?.toJson(),
        'date': date,
        'is_being_posted': isBeingPosted,
        'is_being_edited': isBeingEdited,
        'is_edited': isEdited,
        'is_posted_to_chat_page': isPostedToChatPage,
        'is_visible_only_for_self': isVisibleOnlyForSelf,
        'can_be_added_to_album': canBeAddedToAlbum,
        'can_be_deleted': canBeDeleted,
        'can_be_edited': canBeEdited,
        'can_be_forwarded': canBeForwarded,
        'can_be_replied': canBeReplied,
        'can_set_privacy_settings': canSetPrivacySettings,
        'can_toggle_is_posted_to_chat_page': canToggleIsPostedToChatPage,
        'can_get_statistics': canGetStatistics,
        'can_get_interactions': canGetInteractions,
        'has_expired_viewers': hasExpiredViewers,
        'repost_info': repostInfo?.toJson(),
        'interaction_info': interactionInfo?.toJson(),
        'chosen_reaction_type': chosenReactionType?.toJson(),
        'privacy_settings': privacySettings.toJson(),
        'content': content.toJson(),
        'areas': areas.map((item) => item.toJson()).toList(),
        'caption': caption.toJson(),
        'album_ids': albumIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is Story &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality()
              .equals(other.posterChatId, posterChatId) &&
          const DeepCollectionEquality().equals(other.posterId, posterId) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality()
              .equals(other.isBeingPosted, isBeingPosted) &&
          const DeepCollectionEquality()
              .equals(other.isBeingEdited, isBeingEdited) &&
          const DeepCollectionEquality().equals(other.isEdited, isEdited) &&
          const DeepCollectionEquality()
              .equals(other.isPostedToChatPage, isPostedToChatPage) &&
          const DeepCollectionEquality()
              .equals(other.isVisibleOnlyForSelf, isVisibleOnlyForSelf) &&
          const DeepCollectionEquality()
              .equals(other.canBeAddedToAlbum, canBeAddedToAlbum) &&
          const DeepCollectionEquality()
              .equals(other.canBeDeleted, canBeDeleted) &&
          const DeepCollectionEquality()
              .equals(other.canBeEdited, canBeEdited) &&
          const DeepCollectionEquality()
              .equals(other.canBeForwarded, canBeForwarded) &&
          const DeepCollectionEquality()
              .equals(other.canBeReplied, canBeReplied) &&
          const DeepCollectionEquality()
              .equals(other.canSetPrivacySettings, canSetPrivacySettings) &&
          const DeepCollectionEquality().equals(
              other.canToggleIsPostedToChatPage, canToggleIsPostedToChatPage) &&
          const DeepCollectionEquality()
              .equals(other.canGetStatistics, canGetStatistics) &&
          const DeepCollectionEquality()
              .equals(other.canGetInteractions, canGetInteractions) &&
          const DeepCollectionEquality()
              .equals(other.hasExpiredViewers, hasExpiredViewers) &&
          const DeepCollectionEquality().equals(other.repostInfo, repostInfo) &&
          const DeepCollectionEquality()
              .equals(other.interactionInfo, interactionInfo) &&
          const DeepCollectionEquality()
              .equals(other.chosenReactionType, chosenReactionType) &&
          const DeepCollectionEquality()
              .equals(other.privacySettings, privacySettings) &&
          const DeepCollectionEquality().equals(other.content, content) &&
          const DeepCollectionEquality().equals(other.areas, areas) &&
          const DeepCollectionEquality().equals(other.caption, caption) &&
          const DeepCollectionEquality().equals(other.albumIds, albumIds));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(posterChatId),
        const DeepCollectionEquality().hash(posterId),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(isBeingPosted),
        const DeepCollectionEquality().hash(isBeingEdited),
        const DeepCollectionEquality().hash(isEdited),
        const DeepCollectionEquality().hash(isPostedToChatPage),
        const DeepCollectionEquality().hash(isVisibleOnlyForSelf),
        const DeepCollectionEquality().hash(canBeAddedToAlbum),
        const DeepCollectionEquality().hash(canBeDeleted),
        const DeepCollectionEquality().hash(canBeEdited),
        const DeepCollectionEquality().hash(canBeForwarded),
        const DeepCollectionEquality().hash(canBeReplied),
        const DeepCollectionEquality().hash(canSetPrivacySettings),
        const DeepCollectionEquality().hash(canToggleIsPostedToChatPage),
        const DeepCollectionEquality().hash(canGetStatistics),
        const DeepCollectionEquality().hash(canGetInteractions),
        const DeepCollectionEquality().hash(hasExpiredViewers),
        const DeepCollectionEquality().hash(repostInfo),
        const DeepCollectionEquality().hash(interactionInfo),
        const DeepCollectionEquality().hash(chosenReactionType),
        const DeepCollectionEquality().hash(privacySettings),
        const DeepCollectionEquality().hash(content),
        const DeepCollectionEquality().hash(areas),
        const DeepCollectionEquality().hash(caption),
        const DeepCollectionEquality().hash(albumIds)
      ]);
}
