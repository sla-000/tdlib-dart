// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A forum topic has been edited
@immutable
class MessageForumTopicEdited extends MessageContent {
  const MessageForumTopicEdited({
    required this.name,
    required this.editIconCustomEmojiId,
    required this.iconCustomEmojiId,
  });

  /// [name] If non-empty, the new name of the topic
  final String name;

  /// [editIconCustomEmojiId] True, if icon's custom_emoji_id is changed
  final bool editIconCustomEmojiId;

  /// [iconCustomEmojiId] New unique identifier of the custom emoji shown on the
  /// topic icon; 0 if none. Must be ignored if edit_icon_custom_emoji_id is
  /// false
  final int iconCustomEmojiId;

  static const String constructor = 'messageForumTopicEdited';

  static MessageForumTopicEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForumTopicEdited(
      name: json['name'] as String,
      editIconCustomEmojiId: json['edit_icon_custom_emoji_id'] as bool,
      iconCustomEmojiId: int.tryParse(json['icon_custom_emoji_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'edit_icon_custom_emoji_id': editIconCustomEmojiId,
        'icon_custom_emoji_id': iconCustomEmojiId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageForumTopicEdited &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality()
              .equals(other.editIconCustomEmojiId, editIconCustomEmojiId) &&
          const DeepCollectionEquality()
              .equals(other.iconCustomEmojiId, iconCustomEmojiId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(editIconCustomEmojiId),
        const DeepCollectionEquality().hash(iconCustomEmojiId)
      ]);
}
