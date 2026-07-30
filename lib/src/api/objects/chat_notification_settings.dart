// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about notification settings for a chat or a forum
/// topic
@immutable
class ChatNotificationSettings extends TdObject {
  const ChatNotificationSettings({
    required this.useDefaultMuteFor,
    required this.muteFor,
    required this.useDefaultSound,
    required this.soundId,
    required this.useDefaultShowPreview,
    required this.showPreview,
    required this.useDefaultMuteStories,
    required this.muteStories,
    required this.useDefaultStorySound,
    required this.storySoundId,
    required this.useDefaultShowStoryPoster,
    required this.showStoryPoster,
    required this.useDefaultDisablePinnedMessageNotifications,
    required this.disablePinnedMessageNotifications,
    required this.useDefaultDisableMentionNotifications,
    required this.disableMentionNotifications,
  });

  /// [useDefaultMuteFor] If true, the value for the relevant type of chat or
  /// the forum chat is used instead of mute_for
  final bool useDefaultMuteFor;

  /// [muteFor] Time left before notifications will be unmuted, in seconds
  final int muteFor;

  /// [useDefaultSound] If true, the value for the relevant type of chat or the
  /// forum chat is used instead of sound_id
  final bool useDefaultSound;

  /// [soundId] Identifier of the notification sound to be played for messages;
  /// 0 if sound is disabled
  final int soundId;

  /// [useDefaultShowPreview] If true, the value for the relevant type of chat
  /// or the forum chat is used instead of show_preview
  final bool useDefaultShowPreview;

  /// [showPreview] True, if message content must be displayed in notifications
  final bool showPreview;

  /// [useDefaultMuteStories] If true, the value for the relevant type of chat
  /// is used instead of mute_stories
  final bool useDefaultMuteStories;

  /// [muteStories] True, if story notifications are disabled for the chat
  final bool muteStories;

  /// [useDefaultStorySound] If true, the value for the relevant type of chat is
  /// used instead of story_sound_id
  final bool useDefaultStorySound;

  /// [storySoundId] Identifier of the notification sound to be played for
  /// stories; 0 if sound is disabled
  final int storySoundId;

  /// [useDefaultShowStoryPoster] If true, the value for the relevant type of
  /// chat is used instead of show_story_poster
  final bool useDefaultShowStoryPoster;

  /// [showStoryPoster] True, if the chat that posted a story must be displayed
  /// in notifications
  final bool showStoryPoster;

  /// [useDefaultDisablePinnedMessageNotifications] If true, the value for the
  /// relevant type of chat or the forum chat is used instead of
  /// disable_pinned_message_notifications
  final bool useDefaultDisablePinnedMessageNotifications;

  /// [disablePinnedMessageNotifications] If true, notifications for incoming
  /// pinned messages will be created as for an ordinary unread message
  final bool disablePinnedMessageNotifications;

  /// [useDefaultDisableMentionNotifications] If true, the value for the
  /// relevant type of chat or the forum chat is used instead of
  /// disable_mention_notifications
  final bool useDefaultDisableMentionNotifications;

  /// [disableMentionNotifications] If true, notifications for messages with
  /// mentions will be created as for an ordinary unread message
  final bool disableMentionNotifications;

  static const String constructor = 'chatNotificationSettings';

  static ChatNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatNotificationSettings(
      useDefaultMuteFor: (json['use_default_mute_for'] as bool?) ?? false,
      muteFor: (json['mute_for'] as int?) ?? 0,
      useDefaultSound: (json['use_default_sound'] as bool?) ?? false,
      soundId: (json['sound_id'] is int
              ? json['sound_id'] as int
              : int.tryParse(json['sound_id']?.toString() ?? '')) ??
          0,
      useDefaultShowPreview:
          (json['use_default_show_preview'] as bool?) ?? false,
      showPreview: (json['show_preview'] as bool?) ?? false,
      useDefaultMuteStories:
          (json['use_default_mute_stories'] as bool?) ?? false,
      muteStories: (json['mute_stories'] as bool?) ?? false,
      useDefaultStorySound: (json['use_default_story_sound'] as bool?) ?? false,
      storySoundId: (json['story_sound_id'] is int
              ? json['story_sound_id'] as int
              : int.tryParse(json['story_sound_id']?.toString() ?? '')) ??
          0,
      useDefaultShowStoryPoster:
          (json['use_default_show_story_poster'] as bool?) ?? false,
      showStoryPoster: (json['show_story_poster'] as bool?) ?? false,
      useDefaultDisablePinnedMessageNotifications:
          (json['use_default_disable_pinned_message_notifications'] as bool?) ??
              false,
      disablePinnedMessageNotifications:
          (json['disable_pinned_message_notifications'] as bool?) ?? false,
      useDefaultDisableMentionNotifications:
          (json['use_default_disable_mention_notifications'] as bool?) ?? false,
      disableMentionNotifications:
          (json['disable_mention_notifications'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'use_default_mute_for': useDefaultMuteFor,
        'mute_for': muteFor,
        'use_default_sound': useDefaultSound,
        'sound_id': soundId.toString(),
        'use_default_show_preview': useDefaultShowPreview,
        'show_preview': showPreview,
        'use_default_mute_stories': useDefaultMuteStories,
        'mute_stories': muteStories,
        'use_default_story_sound': useDefaultStorySound,
        'story_sound_id': storySoundId.toString(),
        'use_default_show_story_poster': useDefaultShowStoryPoster,
        'show_story_poster': showStoryPoster,
        'use_default_disable_pinned_message_notifications':
            useDefaultDisablePinnedMessageNotifications,
        'disable_pinned_message_notifications':
            disablePinnedMessageNotifications,
        'use_default_disable_mention_notifications':
            useDefaultDisableMentionNotifications,
        'disable_mention_notifications': disableMentionNotifications,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatNotificationSettings &&
          const DeepCollectionEquality()
              .equals(other.useDefaultMuteFor, useDefaultMuteFor) &&
          const DeepCollectionEquality().equals(other.muteFor, muteFor) &&
          const DeepCollectionEquality()
              .equals(other.useDefaultSound, useDefaultSound) &&
          const DeepCollectionEquality().equals(other.soundId, soundId) &&
          const DeepCollectionEquality()
              .equals(other.useDefaultShowPreview, useDefaultShowPreview) &&
          const DeepCollectionEquality()
              .equals(other.showPreview, showPreview) &&
          const DeepCollectionEquality()
              .equals(other.useDefaultMuteStories, useDefaultMuteStories) &&
          const DeepCollectionEquality()
              .equals(other.muteStories, muteStories) &&
          const DeepCollectionEquality()
              .equals(other.useDefaultStorySound, useDefaultStorySound) &&
          const DeepCollectionEquality()
              .equals(other.storySoundId, storySoundId) &&
          const DeepCollectionEquality().equals(
              other.useDefaultShowStoryPoster, useDefaultShowStoryPoster) &&
          const DeepCollectionEquality()
              .equals(other.showStoryPoster, showStoryPoster) &&
          const DeepCollectionEquality().equals(
              other.useDefaultDisablePinnedMessageNotifications,
              useDefaultDisablePinnedMessageNotifications) &&
          const DeepCollectionEquality().equals(
              other.disablePinnedMessageNotifications,
              disablePinnedMessageNotifications) &&
          const DeepCollectionEquality().equals(
              other.useDefaultDisableMentionNotifications,
              useDefaultDisableMentionNotifications) &&
          const DeepCollectionEquality().equals(
              other.disableMentionNotifications, disableMentionNotifications));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(useDefaultMuteFor),
        const DeepCollectionEquality().hash(muteFor),
        const DeepCollectionEquality().hash(useDefaultSound),
        const DeepCollectionEquality().hash(soundId),
        const DeepCollectionEquality().hash(useDefaultShowPreview),
        const DeepCollectionEquality().hash(showPreview),
        const DeepCollectionEquality().hash(useDefaultMuteStories),
        const DeepCollectionEquality().hash(muteStories),
        const DeepCollectionEquality().hash(useDefaultStorySound),
        const DeepCollectionEquality().hash(storySoundId),
        const DeepCollectionEquality().hash(useDefaultShowStoryPoster),
        const DeepCollectionEquality().hash(showStoryPoster),
        const DeepCollectionEquality()
            .hash(useDefaultDisablePinnedMessageNotifications),
        const DeepCollectionEquality().hash(disablePinnedMessageNotifications),
        const DeepCollectionEquality()
            .hash(useDefaultDisableMentionNotifications),
        const DeepCollectionEquality().hash(disableMentionNotifications)
      ]);
}
