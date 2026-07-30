// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The chat accent color or background custom emoji were changed
@immutable
class ChatEventAccentColorChanged extends ChatEventAction {
  const ChatEventAccentColorChanged({
    required this.oldAccentColorId,
    required this.oldBackgroundCustomEmojiId,
    required this.newAccentColorId,
    required this.newBackgroundCustomEmojiId,
  });

  /// [oldAccentColorId] Previous identifier of chat accent color
  final int oldAccentColorId;

  /// [oldBackgroundCustomEmojiId] Previous identifier of the custom emoji; 0 if
  /// none
  final int oldBackgroundCustomEmojiId;

  /// [newAccentColorId] New identifier of chat accent color
  final int newAccentColorId;

  /// [newBackgroundCustomEmojiId] New identifier of the custom emoji; 0 if none
  final int newBackgroundCustomEmojiId;

  static const String constructor = 'chatEventAccentColorChanged';

  static ChatEventAccentColorChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventAccentColorChanged(
      oldAccentColorId: json['old_accent_color_id'] as int,
      oldBackgroundCustomEmojiId:
          int.tryParse(json['old_background_custom_emoji_id']) ?? 0,
      newAccentColorId: json['new_accent_color_id'] as int,
      newBackgroundCustomEmojiId:
          int.tryParse(json['new_background_custom_emoji_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_accent_color_id': oldAccentColorId,
        'old_background_custom_emoji_id': oldBackgroundCustomEmojiId.toString(),
        'new_accent_color_id': newAccentColorId,
        'new_background_custom_emoji_id': newBackgroundCustomEmojiId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventAccentColorChanged &&
          const DeepCollectionEquality()
              .equals(other.oldAccentColorId, oldAccentColorId) &&
          const DeepCollectionEquality().equals(
              other.oldBackgroundCustomEmojiId, oldBackgroundCustomEmojiId) &&
          const DeepCollectionEquality()
              .equals(other.newAccentColorId, newAccentColorId) &&
          const DeepCollectionEquality().equals(
              other.newBackgroundCustomEmojiId, newBackgroundCustomEmojiId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(oldAccentColorId),
        const DeepCollectionEquality().hash(oldBackgroundCustomEmojiId),
        const DeepCollectionEquality().hash(newAccentColorId),
        const DeepCollectionEquality().hash(newBackgroundCustomEmojiId)
      ]);
}
