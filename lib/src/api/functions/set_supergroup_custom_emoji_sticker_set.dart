// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the custom emoji sticker set of a supergroup; requires
/// can_change_info administrator right. The chat must have at least
/// chatBoostFeatures.min_custom_emoji_sticker_set_boost_level boost level to
/// pass the corresponding color
/// Returns [Ok]
@immutable
class SetSupergroupCustomEmojiStickerSet extends TdFunction {
  const SetSupergroupCustomEmojiStickerSet({
    required this.supergroupId,
    required this.customEmojiStickerSetId,
  });

  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;

  /// [customEmojiStickerSetId] New value of the custom emoji sticker set
  /// identifier for the supergroup. Use 0 to remove the custom emoji sticker
  /// set in the supergroup
  final int customEmojiStickerSetId;

  static const String constructor = 'setSupergroupCustomEmojiStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'custom_emoji_sticker_set_id': customEmojiStickerSetId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetSupergroupCustomEmojiStickerSet &&
          const DeepCollectionEquality()
              .equals(other.supergroupId, supergroupId) &&
          const DeepCollectionEquality()
              .equals(other.customEmojiStickerSetId, customEmojiStickerSetId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(supergroupId),
        const DeepCollectionEquality().hash(customEmojiStickerSetId)
      ]);
}
