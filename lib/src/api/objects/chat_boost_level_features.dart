// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of features available on a specific chat boost level
@immutable
class ChatBoostLevelFeatures extends TdObject {
  const ChatBoostLevelFeatures({
    required this.level,
    required this.storyPerDayCount,
    required this.customEmojiReactionCount,
    required this.titleColorCount,
    required this.profileAccentColorCount,
    required this.canSetProfileBackgroundCustomEmoji,
    required this.accentColorCount,
    required this.canSetBackgroundCustomEmoji,
    required this.canSetEmojiStatus,
    required this.chatThemeBackgroundCount,
    required this.canSetCustomBackground,
    required this.canSetCustomEmojiStickerSet,
    required this.canEnableAutomaticTranslation,
    required this.canRecognizeSpeech,
    required this.canDisableSponsoredMessages,
  });

  /// [level] Target chat boost level
  final int level;

  /// [storyPerDayCount] Number of stories that the chat can publish daily
  final int storyPerDayCount;

  /// [customEmojiReactionCount] Number of custom emoji reactions that can be
  /// added to the list of available reactions
  final int customEmojiReactionCount;

  /// [titleColorCount] Number of custom colors for chat title
  final int titleColorCount;

  /// [profileAccentColorCount] Number of custom colors for profile photo
  /// background
  final int profileAccentColorCount;

  /// [canSetProfileBackgroundCustomEmoji] True, if custom emoji for profile
  /// background can be set
  final bool canSetProfileBackgroundCustomEmoji;

  /// [accentColorCount] Number of custom colors for background of empty chat
  /// photo, replies to messages and link previews
  final int accentColorCount;

  /// [canSetBackgroundCustomEmoji] True, if custom emoji for reply header and
  /// link preview background can be set
  final bool canSetBackgroundCustomEmoji;

  /// [canSetEmojiStatus] True, if emoji status can be set
  final bool canSetEmojiStatus;

  /// [chatThemeBackgroundCount] Number of chat theme backgrounds that can be
  /// set as chat background
  final int chatThemeBackgroundCount;

  /// [canSetCustomBackground] True, if custom background can be set in the chat
  /// for all users
  final bool canSetCustomBackground;

  /// [canSetCustomEmojiStickerSet] True, if custom emoji sticker set can be set
  /// for the chat
  final bool canSetCustomEmojiStickerSet;

  /// [canEnableAutomaticTranslation] True, if automatic translation of messages
  /// can be enabled in the chat
  final bool canEnableAutomaticTranslation;

  /// [canRecognizeSpeech] True, if speech recognition can be used for video
  /// note and voice note messages by all users
  final bool canRecognizeSpeech;

  /// [canDisableSponsoredMessages] True, if sponsored messages can be disabled
  /// in the chat
  final bool canDisableSponsoredMessages;

  static const String constructor = 'chatBoostLevelFeatures';

  static ChatBoostLevelFeatures? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostLevelFeatures(
      level: (json['level'] as int?) ?? 0,
      storyPerDayCount: (json['story_per_day_count'] as int?) ?? 0,
      customEmojiReactionCount:
          (json['custom_emoji_reaction_count'] as int?) ?? 0,
      titleColorCount: (json['title_color_count'] as int?) ?? 0,
      profileAccentColorCount:
          (json['profile_accent_color_count'] as int?) ?? 0,
      canSetProfileBackgroundCustomEmoji:
          (json['can_set_profile_background_custom_emoji'] as bool?) ?? false,
      accentColorCount: (json['accent_color_count'] as int?) ?? 0,
      canSetBackgroundCustomEmoji:
          (json['can_set_background_custom_emoji'] as bool?) ?? false,
      canSetEmojiStatus: (json['can_set_emoji_status'] as bool?) ?? false,
      chatThemeBackgroundCount:
          (json['chat_theme_background_count'] as int?) ?? 0,
      canSetCustomBackground:
          (json['can_set_custom_background'] as bool?) ?? false,
      canSetCustomEmojiStickerSet:
          (json['can_set_custom_emoji_sticker_set'] as bool?) ?? false,
      canEnableAutomaticTranslation:
          (json['can_enable_automatic_translation'] as bool?) ?? false,
      canRecognizeSpeech: (json['can_recognize_speech'] as bool?) ?? false,
      canDisableSponsoredMessages:
          (json['can_disable_sponsored_messages'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'level': level,
        'story_per_day_count': storyPerDayCount,
        'custom_emoji_reaction_count': customEmojiReactionCount,
        'title_color_count': titleColorCount,
        'profile_accent_color_count': profileAccentColorCount,
        'can_set_profile_background_custom_emoji':
            canSetProfileBackgroundCustomEmoji,
        'accent_color_count': accentColorCount,
        'can_set_background_custom_emoji': canSetBackgroundCustomEmoji,
        'can_set_emoji_status': canSetEmojiStatus,
        'chat_theme_background_count': chatThemeBackgroundCount,
        'can_set_custom_background': canSetCustomBackground,
        'can_set_custom_emoji_sticker_set': canSetCustomEmojiStickerSet,
        'can_enable_automatic_translation': canEnableAutomaticTranslation,
        'can_recognize_speech': canRecognizeSpeech,
        'can_disable_sponsored_messages': canDisableSponsoredMessages,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatBoostLevelFeatures &&
          const DeepCollectionEquality().equals(other.level, level) &&
          const DeepCollectionEquality()
              .equals(other.storyPerDayCount, storyPerDayCount) &&
          const DeepCollectionEquality().equals(
              other.customEmojiReactionCount, customEmojiReactionCount) &&
          const DeepCollectionEquality()
              .equals(other.titleColorCount, titleColorCount) &&
          const DeepCollectionEquality()
              .equals(other.profileAccentColorCount, profileAccentColorCount) &&
          const DeepCollectionEquality().equals(
              other.canSetProfileBackgroundCustomEmoji,
              canSetProfileBackgroundCustomEmoji) &&
          const DeepCollectionEquality()
              .equals(other.accentColorCount, accentColorCount) &&
          const DeepCollectionEquality().equals(
              other.canSetBackgroundCustomEmoji, canSetBackgroundCustomEmoji) &&
          const DeepCollectionEquality()
              .equals(other.canSetEmojiStatus, canSetEmojiStatus) &&
          const DeepCollectionEquality().equals(
              other.chatThemeBackgroundCount, chatThemeBackgroundCount) &&
          const DeepCollectionEquality()
              .equals(other.canSetCustomBackground, canSetCustomBackground) &&
          const DeepCollectionEquality().equals(
              other.canSetCustomEmojiStickerSet, canSetCustomEmojiStickerSet) &&
          const DeepCollectionEquality().equals(
              other.canEnableAutomaticTranslation,
              canEnableAutomaticTranslation) &&
          const DeepCollectionEquality()
              .equals(other.canRecognizeSpeech, canRecognizeSpeech) &&
          const DeepCollectionEquality().equals(
              other.canDisableSponsoredMessages, canDisableSponsoredMessages));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(level),
        const DeepCollectionEquality().hash(storyPerDayCount),
        const DeepCollectionEquality().hash(customEmojiReactionCount),
        const DeepCollectionEquality().hash(titleColorCount),
        const DeepCollectionEquality().hash(profileAccentColorCount),
        const DeepCollectionEquality().hash(canSetProfileBackgroundCustomEmoji),
        const DeepCollectionEquality().hash(accentColorCount),
        const DeepCollectionEquality().hash(canSetBackgroundCustomEmoji),
        const DeepCollectionEquality().hash(canSetEmojiStatus),
        const DeepCollectionEquality().hash(chatThemeBackgroundCount),
        const DeepCollectionEquality().hash(canSetCustomBackground),
        const DeepCollectionEquality().hash(canSetCustomEmojiStickerSet),
        const DeepCollectionEquality().hash(canEnableAutomaticTranslation),
        const DeepCollectionEquality().hash(canRecognizeSpeech),
        const DeepCollectionEquality().hash(canDisableSponsoredMessages)
      ]);
}
