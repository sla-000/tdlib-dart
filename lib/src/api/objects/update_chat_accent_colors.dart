// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Chat accent colors have changed
@immutable
class UpdateChatAccentColors extends Update {
  const UpdateChatAccentColors({
    required this.chatId,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
    this.upgradedGiftColors,
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [accentColorId] The new chat accent color identifier
  final int accentColorId;

  /// [backgroundCustomEmojiId] The new identifier of a custom emoji to be shown
  /// on the reply header and link preview background; 0 if none
  final int backgroundCustomEmojiId;

  /// [upgradedGiftColors] Color scheme based on an upgraded gift to be used for
  /// the chat instead of accent_color_id and background_custom_emoji_id; may be
  /// null if none
  final UpgradedGiftColors? upgradedGiftColors;

  /// [profileAccentColorId] The new chat profile accent color identifier; -1 if
  /// none
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] The new identifier of a custom emoji to
  /// be shown on the profile background; 0 if none
  final int profileBackgroundCustomEmojiId;

  static const String constructor = 'updateChatAccentColors';

  static UpdateChatAccentColors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatAccentColors(
      chatId: json['chat_id'] as int,
      accentColorId: json['accent_color_id'] as int,
      backgroundCustomEmojiId:
          int.tryParse(json['background_custom_emoji_id']) ?? 0,
      upgradedGiftColors: UpgradedGiftColors.fromJson(
          json['upgraded_gift_colors'] as Map<String, dynamic>?),
      profileAccentColorId: json['profile_accent_color_id'] as int,
      profileBackgroundCustomEmojiId:
          int.tryParse(json['profile_background_custom_emoji_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'accent_color_id': accentColorId,
        'background_custom_emoji_id': backgroundCustomEmojiId.toString(),
        'upgraded_gift_colors': upgradedGiftColors?.toJson(),
        'profile_accent_color_id': profileAccentColorId,
        'profile_background_custom_emoji_id':
            profileBackgroundCustomEmojiId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateChatAccentColors &&
          const DeepCollectionEquality().equals(other.chatId, chatId) &&
          const DeepCollectionEquality()
              .equals(other.accentColorId, accentColorId) &&
          const DeepCollectionEquality()
              .equals(other.backgroundCustomEmojiId, backgroundCustomEmojiId) &&
          const DeepCollectionEquality()
              .equals(other.upgradedGiftColors, upgradedGiftColors) &&
          const DeepCollectionEquality()
              .equals(other.profileAccentColorId, profileAccentColorId) &&
          const DeepCollectionEquality().equals(
              other.profileBackgroundCustomEmojiId,
              profileBackgroundCustomEmojiId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(chatId),
        const DeepCollectionEquality().hash(accentColorId),
        const DeepCollectionEquality().hash(backgroundCustomEmojiId),
        const DeepCollectionEquality().hash(upgradedGiftColors),
        const DeepCollectionEquality().hash(profileAccentColorId),
        const DeepCollectionEquality().hash(profileBackgroundCustomEmojiId)
      ]);
}
