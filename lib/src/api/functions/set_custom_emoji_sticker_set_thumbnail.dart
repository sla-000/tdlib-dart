// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets a custom emoji sticker set thumbnail
/// Returns [Ok]
@immutable
class SetCustomEmojiStickerSetThumbnail extends TdFunction {
  const SetCustomEmojiStickerSetThumbnail({
    required this.name,
    required this.customEmojiId,
  });

  /// [name] Sticker set name. The sticker set must be owned by the current user
  final String name;

  /// [customEmojiId] Identifier of the custom emoji from the sticker set, which
  /// will be set as sticker set thumbnail; pass 0 to remove the sticker set
  /// thumbnail
  final int customEmojiId;

  static const String constructor = 'setCustomEmojiStickerSetThumbnail';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'custom_emoji_id': customEmojiId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetCustomEmojiStickerSetThumbnail &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality()
              .equals(other.customEmojiId, customEmojiId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(customEmojiId)
      ]);
}
