// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An upgraded gift set as emoji status
@immutable
class EmojiStatusTypeUpgradedGift extends EmojiStatusType {
  const EmojiStatusTypeUpgradedGift({
    required this.upgradedGiftId,
    required this.giftTitle,
    required this.giftName,
    required this.modelCustomEmojiId,
    required this.symbolCustomEmojiId,
    required this.backdropColors,
  });

  /// [upgradedGiftId] Identifier of the upgraded gift
  final int upgradedGiftId;

  /// [giftTitle] The title of the upgraded gift
  final String giftTitle;

  /// [giftName] Unique name of the upgraded gift that can be used with
  /// internalLinkTypeUpgradedGift
  final String giftName;

  /// [modelCustomEmojiId] Custom emoji identifier of the model of the upgraded
  /// gift
  final int modelCustomEmojiId;

  /// [symbolCustomEmojiId] Custom emoji identifier of the symbol of the
  /// upgraded gift
  final int symbolCustomEmojiId;

  /// [backdropColors] Colors of the backdrop of the upgraded gift
  final UpgradedGiftBackdropColors backdropColors;

  static const String constructor = 'emojiStatusTypeUpgradedGift';

  static EmojiStatusTypeUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiStatusTypeUpgradedGift(
      upgradedGiftId: int.tryParse(json['upgraded_gift_id']) ?? 0,
      giftTitle: json['gift_title'] as String,
      giftName: json['gift_name'] as String,
      modelCustomEmojiId: int.tryParse(json['model_custom_emoji_id']) ?? 0,
      symbolCustomEmojiId: int.tryParse(json['symbol_custom_emoji_id']) ?? 0,
      backdropColors: UpgradedGiftBackdropColors.fromJson(
          json['backdrop_colors'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'upgraded_gift_id': upgradedGiftId.toString(),
        'gift_title': giftTitle,
        'gift_name': giftName,
        'model_custom_emoji_id': modelCustomEmojiId.toString(),
        'symbol_custom_emoji_id': symbolCustomEmojiId.toString(),
        'backdrop_colors': backdropColors.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EmojiStatusTypeUpgradedGift &&
          const DeepCollectionEquality()
              .equals(other.upgradedGiftId, upgradedGiftId) &&
          const DeepCollectionEquality().equals(other.giftTitle, giftTitle) &&
          const DeepCollectionEquality().equals(other.giftName, giftName) &&
          const DeepCollectionEquality()
              .equals(other.modelCustomEmojiId, modelCustomEmojiId) &&
          const DeepCollectionEquality()
              .equals(other.symbolCustomEmojiId, symbolCustomEmojiId) &&
          const DeepCollectionEquality()
              .equals(other.backdropColors, backdropColors));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(upgradedGiftId),
        const DeepCollectionEquality().hash(giftTitle),
        const DeepCollectionEquality().hash(giftName),
        const DeepCollectionEquality().hash(modelCustomEmojiId),
        const DeepCollectionEquality().hash(symbolCustomEmojiId),
        const DeepCollectionEquality().hash(backdropColors)
      ]);
}
