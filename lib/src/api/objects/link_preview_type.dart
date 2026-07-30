// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes type of link preview
@immutable
abstract class LinkPreviewType extends TdObject {
  const LinkPreviewType();

  static const String constructor = 'linkPreviewType';

  /// Inherited by:
  /// [LinkPreviewTypeAlbum]
  /// [LinkPreviewTypeAnimation]
  /// [LinkPreviewTypeApp]
  /// [LinkPreviewTypeArticle]
  /// [LinkPreviewTypeAudio]
  /// [LinkPreviewTypeBackground]
  /// [LinkPreviewTypeChannelBoost]
  /// [LinkPreviewTypeChat]
  /// [LinkPreviewTypeDirectMessagesChat]
  /// [LinkPreviewTypeDocument]
  /// [LinkPreviewTypeEmbeddedAnimationPlayer]
  /// [LinkPreviewTypeEmbeddedAudioPlayer]
  /// [LinkPreviewTypeEmbeddedVideoPlayer]
  /// [LinkPreviewTypeExternalAudio]
  /// [LinkPreviewTypeExternalVideo]
  /// [LinkPreviewTypeGiftAuction]
  /// [LinkPreviewTypeGiftCollection]
  /// [LinkPreviewTypeGroupCall]
  /// [LinkPreviewTypeInvoice]
  /// [LinkPreviewTypeLiveStory]
  /// [LinkPreviewTypeMessage]
  /// [LinkPreviewTypePhoto]
  /// [LinkPreviewTypePremiumGiftCode]
  /// [LinkPreviewTypeRequestManagedBot]
  /// [LinkPreviewTypeShareableChatFolder]
  /// [LinkPreviewTypeStickerSet]
  /// [LinkPreviewTypeSticker]
  /// [LinkPreviewTypeStoryAlbum]
  /// [LinkPreviewTypeStory]
  /// [LinkPreviewTypeSupergroupBoost]
  /// [LinkPreviewTypeTextCompositionStyle]
  /// [LinkPreviewTypeTheme]
  /// [LinkPreviewTypeUnsupported]
  /// [LinkPreviewTypeUpgradedGift]
  /// [LinkPreviewTypeUser]
  /// [LinkPreviewTypeVideoChat]
  /// [LinkPreviewTypeVideoNote]
  /// [LinkPreviewTypeVideo]
  /// [LinkPreviewTypeVoiceNote]
  /// [LinkPreviewTypeWebApp]
  static LinkPreviewType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case LinkPreviewTypeAlbum.constructor:
        return LinkPreviewTypeAlbum.fromJson(json);
      case LinkPreviewTypeAnimation.constructor:
        return LinkPreviewTypeAnimation.fromJson(json);
      case LinkPreviewTypeApp.constructor:
        return LinkPreviewTypeApp.fromJson(json);
      case LinkPreviewTypeArticle.constructor:
        return LinkPreviewTypeArticle.fromJson(json);
      case LinkPreviewTypeAudio.constructor:
        return LinkPreviewTypeAudio.fromJson(json);
      case LinkPreviewTypeBackground.constructor:
        return LinkPreviewTypeBackground.fromJson(json);
      case LinkPreviewTypeChannelBoost.constructor:
        return LinkPreviewTypeChannelBoost.fromJson(json);
      case LinkPreviewTypeChat.constructor:
        return LinkPreviewTypeChat.fromJson(json);
      case LinkPreviewTypeDirectMessagesChat.constructor:
        return LinkPreviewTypeDirectMessagesChat.fromJson(json);
      case LinkPreviewTypeDocument.constructor:
        return LinkPreviewTypeDocument.fromJson(json);
      case LinkPreviewTypeEmbeddedAnimationPlayer.constructor:
        return LinkPreviewTypeEmbeddedAnimationPlayer.fromJson(json);
      case LinkPreviewTypeEmbeddedAudioPlayer.constructor:
        return LinkPreviewTypeEmbeddedAudioPlayer.fromJson(json);
      case LinkPreviewTypeEmbeddedVideoPlayer.constructor:
        return LinkPreviewTypeEmbeddedVideoPlayer.fromJson(json);
      case LinkPreviewTypeExternalAudio.constructor:
        return LinkPreviewTypeExternalAudio.fromJson(json);
      case LinkPreviewTypeExternalVideo.constructor:
        return LinkPreviewTypeExternalVideo.fromJson(json);
      case LinkPreviewTypeGiftAuction.constructor:
        return LinkPreviewTypeGiftAuction.fromJson(json);
      case LinkPreviewTypeGiftCollection.constructor:
        return LinkPreviewTypeGiftCollection.fromJson(json);
      case LinkPreviewTypeGroupCall.constructor:
        return LinkPreviewTypeGroupCall.fromJson(json);
      case LinkPreviewTypeInvoice.constructor:
        return LinkPreviewTypeInvoice.fromJson(json);
      case LinkPreviewTypeLiveStory.constructor:
        return LinkPreviewTypeLiveStory.fromJson(json);
      case LinkPreviewTypeMessage.constructor:
        return LinkPreviewTypeMessage.fromJson(json);
      case LinkPreviewTypePhoto.constructor:
        return LinkPreviewTypePhoto.fromJson(json);
      case LinkPreviewTypePremiumGiftCode.constructor:
        return LinkPreviewTypePremiumGiftCode.fromJson(json);
      case LinkPreviewTypeRequestManagedBot.constructor:
        return LinkPreviewTypeRequestManagedBot.fromJson(json);
      case LinkPreviewTypeShareableChatFolder.constructor:
        return LinkPreviewTypeShareableChatFolder.fromJson(json);
      case LinkPreviewTypeSticker.constructor:
        return LinkPreviewTypeSticker.fromJson(json);
      case LinkPreviewTypeStickerSet.constructor:
        return LinkPreviewTypeStickerSet.fromJson(json);
      case LinkPreviewTypeStory.constructor:
        return LinkPreviewTypeStory.fromJson(json);
      case LinkPreviewTypeStoryAlbum.constructor:
        return LinkPreviewTypeStoryAlbum.fromJson(json);
      case LinkPreviewTypeSupergroupBoost.constructor:
        return LinkPreviewTypeSupergroupBoost.fromJson(json);
      case LinkPreviewTypeTextCompositionStyle.constructor:
        return LinkPreviewTypeTextCompositionStyle.fromJson(json);
      case LinkPreviewTypeTheme.constructor:
        return LinkPreviewTypeTheme.fromJson(json);
      case LinkPreviewTypeUnsupported.constructor:
        return LinkPreviewTypeUnsupported.fromJson(json);
      case LinkPreviewTypeUpgradedGift.constructor:
        return LinkPreviewTypeUpgradedGift.fromJson(json);
      case LinkPreviewTypeUser.constructor:
        return LinkPreviewTypeUser.fromJson(json);
      case LinkPreviewTypeVideo.constructor:
        return LinkPreviewTypeVideo.fromJson(json);
      case LinkPreviewTypeVideoChat.constructor:
        return LinkPreviewTypeVideoChat.fromJson(json);
      case LinkPreviewTypeVideoNote.constructor:
        return LinkPreviewTypeVideoNote.fromJson(json);
      case LinkPreviewTypeVoiceNote.constructor:
        return LinkPreviewTypeVoiceNote.fromJson(json);
      case LinkPreviewTypeWebApp.constructor:
        return LinkPreviewTypeWebApp.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is LinkPreviewType);

  @override
  int get hashCode => runtimeType.hashCode;
}
