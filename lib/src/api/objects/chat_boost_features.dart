// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of features available on the first chat boost levels
@immutable
class ChatBoostFeatures extends TdObject {
  const ChatBoostFeatures({
    required this.features,
    required this.minProfileBackgroundCustomEmojiBoostLevel,
    required this.minBackgroundCustomEmojiBoostLevel,
    required this.minEmojiStatusBoostLevel,
    required this.minChatThemeBackgroundBoostLevel,
    required this.minCustomBackgroundBoostLevel,
    required this.minCustomEmojiStickerSetBoostLevel,
    required this.minAutomaticTranslationBoostLevel,
    required this.minSpeechRecognitionBoostLevel,
    required this.minSponsoredMessageDisableBoostLevel,
  });

  /// [features] The list of features
  final List<ChatBoostLevelFeatures> features;

  /// [minProfileBackgroundCustomEmojiBoostLevel] The minimum boost level
  /// required to set custom emoji for profile background
  final int minProfileBackgroundCustomEmojiBoostLevel;

  /// [minBackgroundCustomEmojiBoostLevel] The minimum boost level required to
  /// set custom emoji for reply header and link preview background; for channel
  /// chats only
  final int minBackgroundCustomEmojiBoostLevel;

  /// [minEmojiStatusBoostLevel] The minimum boost level required to set emoji
  /// status
  final int minEmojiStatusBoostLevel;

  /// [minChatThemeBackgroundBoostLevel] The minimum boost level required to set
  /// a chat theme background as chat background
  final int minChatThemeBackgroundBoostLevel;

  /// [minCustomBackgroundBoostLevel] The minimum boost level required to set
  /// custom chat background
  final int minCustomBackgroundBoostLevel;

  /// [minCustomEmojiStickerSetBoostLevel] The minimum boost level required to
  /// set custom emoji sticker set for the chat; for supergroup chats only
  final int minCustomEmojiStickerSetBoostLevel;

  /// [minAutomaticTranslationBoostLevel] The minimum boost level allowing to
  /// enable automatic translation of messages for non-Premium users; for
  /// channel chats only
  final int minAutomaticTranslationBoostLevel;

  /// [minSpeechRecognitionBoostLevel] The minimum boost level allowing to
  /// recognize speech in video note and voice note messages for non-Premium
  /// users; for supergroup chats only
  final int minSpeechRecognitionBoostLevel;

  /// [minSponsoredMessageDisableBoostLevel] The minimum boost level allowing to
  /// disable sponsored messages in the chat; for channel chats only
  final int minSponsoredMessageDisableBoostLevel;

  static const String constructor = 'chatBoostFeatures';

  static ChatBoostFeatures? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostFeatures(
      features: List<ChatBoostLevelFeatures>.from(((json['features']
                  as List<dynamic>?) ??
              <dynamic>[])
          .map((item) =>
              ChatBoostLevelFeatures.fromJson(item as Map<String, dynamic>?))
          .toList()),
      minProfileBackgroundCustomEmojiBoostLevel:
          (json['min_profile_background_custom_emoji_boost_level'] as int?) ??
              0,
      minBackgroundCustomEmojiBoostLevel:
          (json['min_background_custom_emoji_boost_level'] as int?) ?? 0,
      minEmojiStatusBoostLevel:
          (json['min_emoji_status_boost_level'] as int?) ?? 0,
      minChatThemeBackgroundBoostLevel:
          (json['min_chat_theme_background_boost_level'] as int?) ?? 0,
      minCustomBackgroundBoostLevel:
          (json['min_custom_background_boost_level'] as int?) ?? 0,
      minCustomEmojiStickerSetBoostLevel:
          (json['min_custom_emoji_sticker_set_boost_level'] as int?) ?? 0,
      minAutomaticTranslationBoostLevel:
          (json['min_automatic_translation_boost_level'] as int?) ?? 0,
      minSpeechRecognitionBoostLevel:
          (json['min_speech_recognition_boost_level'] as int?) ?? 0,
      minSponsoredMessageDisableBoostLevel:
          (json['min_sponsored_message_disable_boost_level'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'features': features.map((item) => item.toJson()).toList(),
        'min_profile_background_custom_emoji_boost_level':
            minProfileBackgroundCustomEmojiBoostLevel,
        'min_background_custom_emoji_boost_level':
            minBackgroundCustomEmojiBoostLevel,
        'min_emoji_status_boost_level': minEmojiStatusBoostLevel,
        'min_chat_theme_background_boost_level':
            minChatThemeBackgroundBoostLevel,
        'min_custom_background_boost_level': minCustomBackgroundBoostLevel,
        'min_custom_emoji_sticker_set_boost_level':
            minCustomEmojiStickerSetBoostLevel,
        'min_automatic_translation_boost_level':
            minAutomaticTranslationBoostLevel,
        'min_speech_recognition_boost_level': minSpeechRecognitionBoostLevel,
        'min_sponsored_message_disable_boost_level':
            minSponsoredMessageDisableBoostLevel,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatBoostFeatures &&
          const DeepCollectionEquality().equals(other.features, features) &&
          const DeepCollectionEquality().equals(
              other.minProfileBackgroundCustomEmojiBoostLevel,
              minProfileBackgroundCustomEmojiBoostLevel) &&
          const DeepCollectionEquality().equals(
              other.minBackgroundCustomEmojiBoostLevel,
              minBackgroundCustomEmojiBoostLevel) &&
          const DeepCollectionEquality().equals(
              other.minEmojiStatusBoostLevel, minEmojiStatusBoostLevel) &&
          const DeepCollectionEquality().equals(
              other.minChatThemeBackgroundBoostLevel,
              minChatThemeBackgroundBoostLevel) &&
          const DeepCollectionEquality().equals(
              other.minCustomBackgroundBoostLevel,
              minCustomBackgroundBoostLevel) &&
          const DeepCollectionEquality().equals(
              other.minCustomEmojiStickerSetBoostLevel,
              minCustomEmojiStickerSetBoostLevel) &&
          const DeepCollectionEquality().equals(
              other.minAutomaticTranslationBoostLevel,
              minAutomaticTranslationBoostLevel) &&
          const DeepCollectionEquality().equals(
              other.minSpeechRecognitionBoostLevel,
              minSpeechRecognitionBoostLevel) &&
          const DeepCollectionEquality().equals(
              other.minSponsoredMessageDisableBoostLevel,
              minSponsoredMessageDisableBoostLevel));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(features),
        const DeepCollectionEquality()
            .hash(minProfileBackgroundCustomEmojiBoostLevel),
        const DeepCollectionEquality().hash(minBackgroundCustomEmojiBoostLevel),
        const DeepCollectionEquality().hash(minEmojiStatusBoostLevel),
        const DeepCollectionEquality().hash(minChatThemeBackgroundBoostLevel),
        const DeepCollectionEquality().hash(minCustomBackgroundBoostLevel),
        const DeepCollectionEquality().hash(minCustomEmojiStickerSetBoostLevel),
        const DeepCollectionEquality().hash(minAutomaticTranslationBoostLevel),
        const DeepCollectionEquality().hash(minSpeechRecognitionBoostLevel),
        const DeepCollectionEquality()
            .hash(minSponsoredMessageDisableBoostLevel)
      ]);
}
