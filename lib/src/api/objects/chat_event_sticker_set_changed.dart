// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The supergroup sticker set was changed
@immutable
class ChatEventStickerSetChanged extends ChatEventAction {
  const ChatEventStickerSetChanged({
    required this.oldStickerSetId,
    required this.newStickerSetId,
  });

  /// [oldStickerSetId] Previous identifier of the chat sticker set; 0 if none
  final int oldStickerSetId;

  /// [newStickerSetId] New identifier of the chat sticker set; 0 if none
  final int newStickerSetId;

  static const String constructor = 'chatEventStickerSetChanged';

  static ChatEventStickerSetChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventStickerSetChanged(
      oldStickerSetId: (json['old_sticker_set_id'] is int
              ? json['old_sticker_set_id'] as int
              : int.tryParse(json['old_sticker_set_id']?.toString() ?? '')) ??
          0,
      newStickerSetId: (json['new_sticker_set_id'] is int
              ? json['new_sticker_set_id'] as int
              : int.tryParse(json['new_sticker_set_id']?.toString() ?? '')) ??
          0,
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
          other is ChatEventStickerSetChanged &&
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
