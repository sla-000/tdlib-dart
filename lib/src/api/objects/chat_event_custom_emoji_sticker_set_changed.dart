// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The supergroup sticker set with allowed custom emoji was changed
@immutable
class ChatEventCustomEmojiStickerSetChanged extends ChatEventAction {
  const ChatEventCustomEmojiStickerSetChanged({
    required this.oldStickerSetId,
    required this.newStickerSetId,
  });

  /// [oldStickerSetId] Previous identifier of the chat sticker set; 0 if none
  final int oldStickerSetId;

  /// [newStickerSetId] New identifier of the chat sticker set; 0 if none
  final int newStickerSetId;

  static const String constructor = 'chatEventCustomEmojiStickerSetChanged';

  static ChatEventCustomEmojiStickerSetChanged? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventCustomEmojiStickerSetChanged(
      oldStickerSetId: int.tryParse(json['old_sticker_set_id']) ?? 0,
      newStickerSetId: int.tryParse(json['new_sticker_set_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_sticker_set_id': oldStickerSetId.toString(),
        'new_sticker_set_id': newStickerSetId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ChatEventCustomEmojiStickerSetChanged &&
          const DeepCollectionEquality()
              .equals(other.oldStickerSetId, oldStickerSetId) &&
          const DeepCollectionEquality()
              .equals(other.newStickerSetId, newStickerSetId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(oldStickerSetId),
        const DeepCollectionEquality().hash(newStickerSetId)
      ]);
}
