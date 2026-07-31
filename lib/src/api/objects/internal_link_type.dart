// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an internal https://t.me or tg: link, which must be processed by
/// the application in a special way
@immutable
abstract class InternalLinkType extends TdObject {
  const InternalLinkType();

  static const String constructor = 'internalLinkType';

  /// Inherited by:
  /// [InternalLinkTypeAttachmentMenuBot]
  /// [InternalLinkTypeAuthenticationCode]
  /// [InternalLinkTypeBackground]
  /// [InternalLinkTypeBotAddToChannel]
  /// [InternalLinkTypeBotStartInGroup]
  /// [InternalLinkTypeBotStart]
  /// [InternalLinkTypeBusinessChat]
  /// [InternalLinkTypeCallsPage]
  /// [InternalLinkTypeChatAffiliateProgram]
  /// [InternalLinkTypeChatBoost]
  /// [InternalLinkTypeChatFolderInvite]
  /// [InternalLinkTypeChatInvite]
  /// [InternalLinkTypeChatSelection]
  /// [InternalLinkTypeContactsPage]
  /// [InternalLinkTypeDirectMessagesChat]
  /// [InternalLinkTypeGame]
  /// [InternalLinkTypeGiftAuction]
  /// [InternalLinkTypeGiftCollection]
  /// [InternalLinkTypeGroupCall]
  /// [InternalLinkTypeInstantView]
  /// [InternalLinkTypeInvoice]
  /// [InternalLinkTypeLanguagePack]
  /// [InternalLinkTypeLiveStory]
  /// [InternalLinkTypeMainWebApp]
  /// [InternalLinkTypeMessageDraft]
  /// [InternalLinkTypeMessage]
  /// [InternalLinkTypeMyProfilePage]
  /// [InternalLinkTypeNewChannelChat]
  /// [InternalLinkTypeNewGroupChat]
  /// [InternalLinkTypeNewPrivateChat]
  /// [InternalLinkTypeNewStory]
  /// [InternalLinkTypeOauth]
  /// [InternalLinkTypePassportDataRequest]
  /// [InternalLinkTypePhoneNumberConfirmation]
  /// [InternalLinkTypePremiumFeaturesPage]
  /// [InternalLinkTypePremiumGiftCode]
  /// [InternalLinkTypePremiumGiftPurchase]
  /// [InternalLinkTypeProxy]
  /// [InternalLinkTypePublicChat]
  /// [InternalLinkTypeQrCodeAuthentication]
  /// [InternalLinkTypeRequestManagedBot]
  /// [InternalLinkTypeRestorePurchases]
  /// [InternalLinkTypeSavedMessages]
  /// [InternalLinkTypeSearch]
  /// [InternalLinkTypeSettings]
  /// [InternalLinkTypeStarPurchase]
  /// [InternalLinkTypeStickerSet]
  /// [InternalLinkTypeStoryAlbum]
  /// [InternalLinkTypeStory]
  /// [InternalLinkTypeTheme]
  /// [InternalLinkTypeUnknownDeepLink]
  /// [InternalLinkTypeUpgradedGift]
  /// [InternalLinkTypeUserPhoneNumber]
  /// [InternalLinkTypeUserToken]
  /// [InternalLinkTypeVideoChat]
  /// [InternalLinkTypeWebApp]
  static InternalLinkType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InternalLinkTypeAttachmentMenuBot.constructor:
        return InternalLinkTypeAttachmentMenuBot.fromJson(json);
      case InternalLinkTypeAuthenticationCode.constructor:
        return InternalLinkTypeAuthenticationCode.fromJson(json);
      case InternalLinkTypeBackground.constructor:
        return InternalLinkTypeBackground.fromJson(json);
      case InternalLinkTypeBotAddToChannel.constructor:
        return InternalLinkTypeBotAddToChannel.fromJson(json);
      case InternalLinkTypeBotStart.constructor:
        return InternalLinkTypeBotStart.fromJson(json);
      case InternalLinkTypeBotStartInGroup.constructor:
        return InternalLinkTypeBotStartInGroup.fromJson(json);
      case InternalLinkTypeBusinessChat.constructor:
        return InternalLinkTypeBusinessChat.fromJson(json);
      case InternalLinkTypeCallsPage.constructor:
        return InternalLinkTypeCallsPage.fromJson(json);
      case InternalLinkTypeChatAffiliateProgram.constructor:
        return InternalLinkTypeChatAffiliateProgram.fromJson(json);
      case InternalLinkTypeChatBoost.constructor:
        return InternalLinkTypeChatBoost.fromJson(json);
      case InternalLinkTypeChatFolderInvite.constructor:
        return InternalLinkTypeChatFolderInvite.fromJson(json);
      case InternalLinkTypeChatInvite.constructor:
        return InternalLinkTypeChatInvite.fromJson(json);
      case InternalLinkTypeChatSelection.constructor:
        return InternalLinkTypeChatSelection.fromJson(json);
      case InternalLinkTypeContactsPage.constructor:
        return InternalLinkTypeContactsPage.fromJson(json);
      case InternalLinkTypeDirectMessagesChat.constructor:
        return InternalLinkTypeDirectMessagesChat.fromJson(json);
      case InternalLinkTypeGame.constructor:
        return InternalLinkTypeGame.fromJson(json);
      case InternalLinkTypeGiftAuction.constructor:
        return InternalLinkTypeGiftAuction.fromJson(json);
      case InternalLinkTypeGiftCollection.constructor:
        return InternalLinkTypeGiftCollection.fromJson(json);
      case InternalLinkTypeGroupCall.constructor:
        return InternalLinkTypeGroupCall.fromJson(json);
      case InternalLinkTypeInstantView.constructor:
        return InternalLinkTypeInstantView.fromJson(json);
      case InternalLinkTypeInvoice.constructor:
        return InternalLinkTypeInvoice.fromJson(json);
      case InternalLinkTypeLanguagePack.constructor:
        return InternalLinkTypeLanguagePack.fromJson(json);
      case InternalLinkTypeLiveStory.constructor:
        return InternalLinkTypeLiveStory.fromJson(json);
      case InternalLinkTypeMainWebApp.constructor:
        return InternalLinkTypeMainWebApp.fromJson(json);
      case InternalLinkTypeMessage.constructor:
        return InternalLinkTypeMessage.fromJson(json);
      case InternalLinkTypeMessageDraft.constructor:
        return InternalLinkTypeMessageDraft.fromJson(json);
      case InternalLinkTypeMyProfilePage.constructor:
        return InternalLinkTypeMyProfilePage.fromJson(json);
      case InternalLinkTypeNewChannelChat.constructor:
        return InternalLinkTypeNewChannelChat.fromJson(json);
      case InternalLinkTypeNewGroupChat.constructor:
        return InternalLinkTypeNewGroupChat.fromJson(json);
      case InternalLinkTypeNewPrivateChat.constructor:
        return InternalLinkTypeNewPrivateChat.fromJson(json);
      case InternalLinkTypeNewStory.constructor:
        return InternalLinkTypeNewStory.fromJson(json);
      case InternalLinkTypeOauth.constructor:
        return InternalLinkTypeOauth.fromJson(json);
      case InternalLinkTypePassportDataRequest.constructor:
        return InternalLinkTypePassportDataRequest.fromJson(json);
      case InternalLinkTypePhoneNumberConfirmation.constructor:
        return InternalLinkTypePhoneNumberConfirmation.fromJson(json);
      case InternalLinkTypePremiumFeaturesPage.constructor:
        return InternalLinkTypePremiumFeaturesPage.fromJson(json);
      case InternalLinkTypePremiumGiftCode.constructor:
        return InternalLinkTypePremiumGiftCode.fromJson(json);
      case InternalLinkTypePremiumGiftPurchase.constructor:
        return InternalLinkTypePremiumGiftPurchase.fromJson(json);
      case InternalLinkTypeProxy.constructor:
        return InternalLinkTypeProxy.fromJson(json);
      case InternalLinkTypePublicChat.constructor:
        return InternalLinkTypePublicChat.fromJson(json);
      case InternalLinkTypeQrCodeAuthentication.constructor:
        return InternalLinkTypeQrCodeAuthentication.fromJson(json);
      case InternalLinkTypeRequestManagedBot.constructor:
        return InternalLinkTypeRequestManagedBot.fromJson(json);
      case InternalLinkTypeRestorePurchases.constructor:
        return InternalLinkTypeRestorePurchases.fromJson(json);
      case InternalLinkTypeSavedMessages.constructor:
        return InternalLinkTypeSavedMessages.fromJson(json);
      case InternalLinkTypeSearch.constructor:
        return InternalLinkTypeSearch.fromJson(json);
      case InternalLinkTypeSettings.constructor:
        return InternalLinkTypeSettings.fromJson(json);
      case InternalLinkTypeStarPurchase.constructor:
        return InternalLinkTypeStarPurchase.fromJson(json);
      case InternalLinkTypeStickerSet.constructor:
        return InternalLinkTypeStickerSet.fromJson(json);
      case InternalLinkTypeStory.constructor:
        return InternalLinkTypeStory.fromJson(json);
      case InternalLinkTypeStoryAlbum.constructor:
        return InternalLinkTypeStoryAlbum.fromJson(json);
      case InternalLinkTypeTheme.constructor:
        return InternalLinkTypeTheme.fromJson(json);
      case InternalLinkTypeUnknownDeepLink.constructor:
        return InternalLinkTypeUnknownDeepLink.fromJson(json);
      case InternalLinkTypeUpgradedGift.constructor:
        return InternalLinkTypeUpgradedGift.fromJson(json);
      case InternalLinkTypeUserPhoneNumber.constructor:
        return InternalLinkTypeUserPhoneNumber.fromJson(json);
      case InternalLinkTypeUserToken.constructor:
        return InternalLinkTypeUserToken.fromJson(json);
      case InternalLinkTypeVideoChat.constructor:
        return InternalLinkTypeVideoChat.fromJson(json);
      case InternalLinkTypeWebApp.constructor:
        return InternalLinkTypeWebApp.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is InternalLinkType);

  @override
  int get hashCode => runtimeType.hashCode;
}
