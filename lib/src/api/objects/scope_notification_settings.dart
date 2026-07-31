// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about notification settings for several chats
@immutable
class ScopeNotificationSettings extends TdObject {
  const ScopeNotificationSettings({
    required this.muteFor,
    required this.soundId,
    required this.showPreview,
    required this.useDefaultMuteStories,
    required this.muteStories,
    required this.storySoundId,
    required this.showStoryPoster,
    required this.disablePinnedMessageNotifications,
    required this.disableMentionNotifications,
  });

  /// [muteFor] Time left before notifications will be unmuted, in seconds
  final int muteFor;

  /// [soundId] Identifier of the notification sound to be played; 0 if sound is
  /// disabled
  final int soundId;

  /// [showPreview] True, if message content must be displayed in notifications
  final bool showPreview;

  /// [useDefaultMuteStories] If true, story notifications are received only for
  /// the first 5 chats from topChatCategoryUsers regardless of the value of
  /// mute_stories
  final bool useDefaultMuteStories;

  /// [muteStories] True, if story notifications are disabled
  final bool muteStories;

  /// [storySoundId] Identifier of the notification sound to be played for
  /// stories; 0 if sound is disabled
  final int storySoundId;

  /// [showStoryPoster] True, if the chat that posted a story must be displayed
  /// in notifications
  final bool showStoryPoster;

  /// [disablePinnedMessageNotifications] True, if notifications for incoming
  /// pinned messages will be created as for an ordinary unread message
  final bool disablePinnedMessageNotifications;

  /// [disableMentionNotifications] True, if notifications for messages with
  /// mentions will be created as for an ordinary unread message
  final bool disableMentionNotifications;

  static const String constructor = 'scopeNotificationSettings';

  static ScopeNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ScopeNotificationSettings(
      muteFor: (json['mute_for'] as int?) ?? 0,
      soundId: (json['sound_id'] is int
              ? json['sound_id'] as int
              : int.tryParse(json['sound_id']?.toString() ?? '')) ??
          0,
      showPreview: (json['show_preview'] as bool?) ?? false,
      useDefaultMuteStories:
          (json['use_default_mute_stories'] as bool?) ?? false,
      muteStories: (json['mute_stories'] as bool?) ?? false,
      storySoundId: (json['story_sound_id'] is int
              ? json['story_sound_id'] as int
              : int.tryParse(json['story_sound_id']?.toString() ?? '')) ??
          0,
      showStoryPoster: (json['show_story_poster'] as bool?) ?? false,
      disablePinnedMessageNotifications:
          (json['disable_pinned_message_notifications'] as bool?) ?? false,
      disableMentionNotifications:
          (json['disable_mention_notifications'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'mute_for': muteFor,
        'sound_id': soundId.toString(),
        'show_preview': showPreview,
        'use_default_mute_stories': useDefaultMuteStories,
        'mute_stories': muteStories,
        'story_sound_id': storySoundId.toString(),
        'show_story_poster': showStoryPoster,
        'disable_pinned_message_notifications':
            disablePinnedMessageNotifications,
        'disable_mention_notifications': disableMentionNotifications,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ScopeNotificationSettings &&
          const DeepCollectionEquality().equals(other.muteFor, muteFor) &&
          const DeepCollectionEquality().equals(other.soundId, soundId) &&
          const DeepCollectionEquality()
              .equals(other.showPreview, showPreview) &&
          const DeepCollectionEquality()
              .equals(other.useDefaultMuteStories, useDefaultMuteStories) &&
          const DeepCollectionEquality()
              .equals(other.muteStories, muteStories) &&
          const DeepCollectionEquality()
              .equals(other.storySoundId, storySoundId) &&
          const DeepCollectionEquality()
              .equals(other.showStoryPoster, showStoryPoster) &&
          const DeepCollectionEquality().equals(
              other.disablePinnedMessageNotifications,
              disablePinnedMessageNotifications) &&
          const DeepCollectionEquality().equals(
              other.disableMentionNotifications, disableMentionNotifications));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(muteFor),
        const DeepCollectionEquality().hash(soundId),
        const DeepCollectionEquality().hash(showPreview),
        const DeepCollectionEquality().hash(useDefaultMuteStories),
        const DeepCollectionEquality().hash(muteStories),
        const DeepCollectionEquality().hash(storySoundId),
        const DeepCollectionEquality().hash(showStoryPoster),
        const DeepCollectionEquality().hash(disablePinnedMessageNotifications),
        const DeepCollectionEquality().hash(disableMentionNotifications)
      ]);
}
