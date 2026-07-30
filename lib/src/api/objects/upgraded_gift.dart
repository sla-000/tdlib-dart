// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an upgraded gift that can be transferred to another owner or
/// transferred to the TON blockchain as an NFT
@immutable
class UpgradedGift extends TdObject {
  const UpgradedGift({
    required this.id,
    required this.regularGiftId,
    required this.publisherChatId,
    required this.title,
    required this.name,
    required this.number,
    required this.totalUpgradedCount,
    required this.maxUpgradedCount,
    required this.isBurned,
    required this.isCrafted,
    required this.isPremium,
    required this.isThemeAvailable,
    required this.usedThemeChatId,
    this.hostId,
    this.ownerId,
    required this.ownerAddress,
    required this.ownerName,
    required this.giftAddress,
    required this.model,
    required this.symbol,
    required this.backdrop,
    this.originalDetails,
    this.colors,
    this.resaleParameters,
    required this.canSendPurchaseOffer,
    required this.craftProbabilityPerMille,
    required this.valueCurrency,
    required this.valueAmount,
    required this.valueUsdAmount,
  });

  /// [id] Unique identifier of the gift
  final int id;

  /// [regularGiftId] Unique identifier of the regular gift from which the gift
  /// was upgraded; may be 0 for short period of time for old gifts from
  /// database
  final int regularGiftId;

  /// [publisherChatId] Identifier of the chat that published the gift; 0 if
  /// none
  final int publisherChatId;

  /// [title] The title of the upgraded gift
  final String title;

  /// [name] Unique name of the upgraded gift that can be used with
  /// internalLinkTypeUpgradedGift or sendResoldGift
  final String name;

  /// [number] Unique number of the upgraded gift among gifts upgraded from the
  /// same gift
  final int number;

  /// [totalUpgradedCount] Total number of gifts that were upgraded from the
  /// same gift
  final int totalUpgradedCount;

  /// [maxUpgradedCount] The maximum number of gifts that can be upgraded from
  /// the same gift
  final int maxUpgradedCount;

  /// [isBurned] True, if the gift was used to craft another gift
  final bool isBurned;

  /// [isCrafted] True, if the gift was crafted from other gifts
  final bool isCrafted;

  /// [isPremium] True, if the original gift could have been bought only by
  /// Telegram Premium subscribers
  final bool isPremium;

  /// [isThemeAvailable] True, if the gift can be used to set a theme in a chat
  final bool isThemeAvailable;

  /// [usedThemeChatId] Identifier of the chat for which the gift is used to set
  /// a theme; 0 if none or the gift isn't owned by the current user
  final int usedThemeChatId;

  /// [hostId] Identifier of the user or the chat to which the upgraded gift was
  /// assigned from blockchain; may be null if none or unknown
  final MessageSender? hostId;

  /// [ownerId] Identifier of the user or the chat that owns the upgraded gift;
  /// may be null if none or unknown
  final MessageSender? ownerId;

  /// [ownerAddress] Address of the gift NFT owner in TON blockchain; may be
  /// empty if none. Append the address to
  /// getOption("ton_blockchain_explorer_url") to get a link with information
  /// about the address
  final String ownerAddress;

  /// [ownerName] Name of the owner for the case when owner identifier and
  /// address aren't known
  final String ownerName;

  /// [giftAddress] Address of the gift NFT in TON blockchain; may be empty if
  /// none. Append the address to getOption("ton_blockchain_explorer_url") to
  /// get a link with information about the address
  final String giftAddress;

  /// [model] Model of the upgraded gift
  final UpgradedGiftModel model;

  /// [symbol] Symbol of the upgraded gift
  final UpgradedGiftSymbol symbol;

  /// [backdrop] Backdrop of the upgraded gift
  final UpgradedGiftBackdrop backdrop;

  /// [originalDetails] Information about the originally sent gift; may be null
  /// if unknown
  final UpgradedGiftOriginalDetails? originalDetails;

  /// [colors] Colors that can be set for user's name, background of empty chat
  /// photo, replies to messages and link previews; may be null if none or
  /// unknown
  final UpgradedGiftColors? colors;

  /// [resaleParameters] Resale parameters of the gift; may be null if resale
  /// isn't possible
  final GiftResaleParameters? resaleParameters;

  /// [canSendPurchaseOffer] True, if an offer to purchase the gift can be sent
  /// using sendGiftPurchaseOffer
  final bool canSendPurchaseOffer;

  /// [craftProbabilityPerMille] Probability that the gift adds to the chance of
  /// successful crafting of a new gift; 0 if the gift can't be used for
  /// crafting
  final int craftProbabilityPerMille;

  /// [valueCurrency] ISO 4217 currency code of the currency in which value of
  /// the gift is represented; may be empty if unavailable
  final String valueCurrency;

  /// [valueAmount] Estimated value of the gift; in the smallest units of the
  /// currency; 0 if unavailable
  final int valueAmount;

  /// [valueUsdAmount] Estimated value of the gift in USD; in USD cents; 0 if
  /// unavailable
  final int valueUsdAmount;

  static const String constructor = 'upgradedGift';

  static UpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGift(
      id: (json['id'] is int
              ? json['id'] as int
              : int.tryParse(json['id']?.toString() ?? '')) ??
          0,
      regularGiftId: (json['regular_gift_id'] is int
              ? json['regular_gift_id'] as int
              : int.tryParse(json['regular_gift_id']?.toString() ?? '')) ??
          0,
      publisherChatId: (json['publisher_chat_id'] as int?) ?? 0,
      title: (json['title'] as String?) ?? '',
      name: (json['name'] as String?) ?? '',
      number: (json['number'] as int?) ?? 0,
      totalUpgradedCount: (json['total_upgraded_count'] as int?) ?? 0,
      maxUpgradedCount: (json['max_upgraded_count'] as int?) ?? 0,
      isBurned: (json['is_burned'] as bool?) ?? false,
      isCrafted: (json['is_crafted'] as bool?) ?? false,
      isPremium: (json['is_premium'] as bool?) ?? false,
      isThemeAvailable: (json['is_theme_available'] as bool?) ?? false,
      usedThemeChatId: (json['used_theme_chat_id'] as int?) ?? 0,
      hostId: MessageSender.fromJson(json['host_id'] as Map<String, dynamic>?),
      ownerId:
          MessageSender.fromJson(json['owner_id'] as Map<String, dynamic>?),
      ownerAddress: (json['owner_address'] as String?) ?? '',
      ownerName: (json['owner_name'] as String?) ?? '',
      giftAddress: (json['gift_address'] as String?) ?? '',
      model:
          UpgradedGiftModel.fromJson(json['model'] as Map<String, dynamic>?)!,
      symbol:
          UpgradedGiftSymbol.fromJson(json['symbol'] as Map<String, dynamic>?)!,
      backdrop: UpgradedGiftBackdrop.fromJson(
          json['backdrop'] as Map<String, dynamic>?)!,
      originalDetails: UpgradedGiftOriginalDetails.fromJson(
          json['original_details'] as Map<String, dynamic>?),
      colors:
          UpgradedGiftColors.fromJson(json['colors'] as Map<String, dynamic>?),
      resaleParameters: GiftResaleParameters.fromJson(
          json['resale_parameters'] as Map<String, dynamic>?),
      canSendPurchaseOffer: (json['can_send_purchase_offer'] as bool?) ?? false,
      craftProbabilityPerMille:
          (json['craft_probability_per_mille'] as int?) ?? 0,
      valueCurrency: (json['value_currency'] as String?) ?? '',
      valueAmount: (json['value_amount'] as int?) ?? 0,
      valueUsdAmount: (json['value_usd_amount'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'regular_gift_id': regularGiftId.toString(),
        'publisher_chat_id': publisherChatId,
        'title': title,
        'name': name,
        'number': number,
        'total_upgraded_count': totalUpgradedCount,
        'max_upgraded_count': maxUpgradedCount,
        'is_burned': isBurned,
        'is_crafted': isCrafted,
        'is_premium': isPremium,
        'is_theme_available': isThemeAvailable,
        'used_theme_chat_id': usedThemeChatId,
        'host_id': hostId?.toJson(),
        'owner_id': ownerId?.toJson(),
        'owner_address': ownerAddress,
        'owner_name': ownerName,
        'gift_address': giftAddress,
        'model': model.toJson(),
        'symbol': symbol.toJson(),
        'backdrop': backdrop.toJson(),
        'original_details': originalDetails?.toJson(),
        'colors': colors?.toJson(),
        'resale_parameters': resaleParameters?.toJson(),
        'can_send_purchase_offer': canSendPurchaseOffer,
        'craft_probability_per_mille': craftProbabilityPerMille,
        'value_currency': valueCurrency,
        'value_amount': valueAmount,
        'value_usd_amount': valueUsdAmount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGift &&
          const DeepCollectionEquality().equals(other.id, id) &&
          const DeepCollectionEquality()
              .equals(other.regularGiftId, regularGiftId) &&
          const DeepCollectionEquality()
              .equals(other.publisherChatId, publisherChatId) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.name, name) &&
          const DeepCollectionEquality().equals(other.number, number) &&
          const DeepCollectionEquality()
              .equals(other.totalUpgradedCount, totalUpgradedCount) &&
          const DeepCollectionEquality()
              .equals(other.maxUpgradedCount, maxUpgradedCount) &&
          const DeepCollectionEquality().equals(other.isBurned, isBurned) &&
          const DeepCollectionEquality().equals(other.isCrafted, isCrafted) &&
          const DeepCollectionEquality().equals(other.isPremium, isPremium) &&
          const DeepCollectionEquality()
              .equals(other.isThemeAvailable, isThemeAvailable) &&
          const DeepCollectionEquality()
              .equals(other.usedThemeChatId, usedThemeChatId) &&
          const DeepCollectionEquality().equals(other.hostId, hostId) &&
          const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
          const DeepCollectionEquality()
              .equals(other.ownerAddress, ownerAddress) &&
          const DeepCollectionEquality().equals(other.ownerName, ownerName) &&
          const DeepCollectionEquality()
              .equals(other.giftAddress, giftAddress) &&
          const DeepCollectionEquality().equals(other.model, model) &&
          const DeepCollectionEquality().equals(other.symbol, symbol) &&
          const DeepCollectionEquality().equals(other.backdrop, backdrop) &&
          const DeepCollectionEquality()
              .equals(other.originalDetails, originalDetails) &&
          const DeepCollectionEquality().equals(other.colors, colors) &&
          const DeepCollectionEquality()
              .equals(other.resaleParameters, resaleParameters) &&
          const DeepCollectionEquality()
              .equals(other.canSendPurchaseOffer, canSendPurchaseOffer) &&
          const DeepCollectionEquality().equals(
              other.craftProbabilityPerMille, craftProbabilityPerMille) &&
          const DeepCollectionEquality()
              .equals(other.valueCurrency, valueCurrency) &&
          const DeepCollectionEquality()
              .equals(other.valueAmount, valueAmount) &&
          const DeepCollectionEquality()
              .equals(other.valueUsdAmount, valueUsdAmount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(regularGiftId),
        const DeepCollectionEquality().hash(publisherChatId),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(number),
        const DeepCollectionEquality().hash(totalUpgradedCount),
        const DeepCollectionEquality().hash(maxUpgradedCount),
        const DeepCollectionEquality().hash(isBurned),
        const DeepCollectionEquality().hash(isCrafted),
        const DeepCollectionEquality().hash(isPremium),
        const DeepCollectionEquality().hash(isThemeAvailable),
        const DeepCollectionEquality().hash(usedThemeChatId),
        const DeepCollectionEquality().hash(hostId),
        const DeepCollectionEquality().hash(ownerId),
        const DeepCollectionEquality().hash(ownerAddress),
        const DeepCollectionEquality().hash(ownerName),
        const DeepCollectionEquality().hash(giftAddress),
        const DeepCollectionEquality().hash(model),
        const DeepCollectionEquality().hash(symbol),
        const DeepCollectionEquality().hash(backdrop),
        const DeepCollectionEquality().hash(originalDetails),
        const DeepCollectionEquality().hash(colors),
        const DeepCollectionEquality().hash(resaleParameters),
        const DeepCollectionEquality().hash(canSendPurchaseOffer),
        const DeepCollectionEquality().hash(craftProbabilityPerMille),
        const DeepCollectionEquality().hash(valueCurrency),
        const DeepCollectionEquality().hash(valueAmount),
        const DeepCollectionEquality().hash(valueUsdAmount)
      ]);
}
