// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes accent color and background custom emoji for profile of the
/// current user; for Telegram Premium users only
/// Returns [Ok]
@immutable
class SetProfileAccentColor extends TdFunction {
  const SetProfileAccentColor({
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
  });

  /// [profileAccentColorId] Identifier of the accent color to use for profile;
  /// pass -1 if none
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] Identifier of a custom emoji to be shown
  /// on the user's profile photo background; 0 if none
  final int profileBackgroundCustomEmojiId;

  static const String constructor = 'setProfileAccentColor';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'profile_accent_color_id': profileAccentColorId,
        'profile_background_custom_emoji_id':
            profileBackgroundCustomEmojiId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetProfileAccentColor &&
          const DeepCollectionEquality()
              .equals(other.profileAccentColorId, profileAccentColorId) &&
          const DeepCollectionEquality().equals(
              other.profileBackgroundCustomEmojiId,
              profileBackgroundCustomEmojiId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(profileAccentColorId),
        const DeepCollectionEquality().hash(profileBackgroundCustomEmojiId)
      ]);
}
