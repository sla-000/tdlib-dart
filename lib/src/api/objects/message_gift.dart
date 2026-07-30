// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A regular gift was received or sent by the current user, or the current
/// user was notified about a channel gift
@immutable
class MessageGift extends MessageContent {
  const MessageGift({
    required this.gift,
    this.senderId,
    required this.receiverId,
    required this.receivedGiftId,
    required this.text,
    required this.uniqueGiftNumber,
    required this.sellStarCount,
    required this.prepaidUpgradeStarCount,
    required this.isUpgradeSeparate,
    required this.isFromAuction,
    required this.isPrivate,
    required this.isSaved,
    required this.isPrepaidUpgrade,
    required this.canBeUpgraded,
    required this.wasConverted,
    required this.wasUpgraded,
    required this.wasRefunded,
    required this.upgradedReceivedGiftId,
    required this.prepaidUpgradeHash,
  });

  /// [gift] The gift
  final Gift gift;

  /// [senderId] Sender of the gift; may be null for outgoing messages about
  /// prepaid upgrade of gifts from unknown users
  final MessageSender? senderId;

  /// [receiverId] Receiver of the gift
  final MessageSender receiverId;

  /// [receivedGiftId] Unique identifier of the received gift for the current
  /// user; only for the receiver of the gift
  final String receivedGiftId;

  /// [text] Message added to the gift
  final FormattedText text;

  /// [uniqueGiftNumber] Unique number of the gift among gifts upgraded from the
  /// same gift after upgrade; 0 if yet unassigned
  final int uniqueGiftNumber;

  /// [sellStarCount] Number of Telegram Stars that can be claimed by the
  /// receiver instead of the regular gift; 0 if the gift can't be sold by the
  /// receiver
  final int sellStarCount;

  /// [prepaidUpgradeStarCount] Number of Telegram Stars that were paid by the
  /// sender for the ability to upgrade the gift
  final int prepaidUpgradeStarCount;

  /// [isUpgradeSeparate] True, if the upgrade was bought after the gift was
  /// sent. In this case, prepaid upgrade cost must not be added to the gift
  /// cost
  final bool isUpgradeSeparate;

  /// [isFromAuction] True, if the message is a notification about a gift won on
  /// an auction
  final bool isFromAuction;

  /// [isPrivate] True, if the sender and gift text are shown only to the gift
  /// receiver; otherwise, everyone will be able to see them
  final bool isPrivate;

  /// [isSaved] True, if the gift is displayed on the user's or the channel's
  /// profile page; only for the receiver of the gift
  final bool isSaved;

  /// [isPrepaidUpgrade] True, if the message is about prepaid upgrade of the
  /// gift by another user
  final bool isPrepaidUpgrade;

  /// [canBeUpgraded] True, if the gift can be upgraded to a unique gift; only
  /// for the receiver of the gift
  final bool canBeUpgraded;

  /// [wasConverted] True, if the gift was converted to Telegram Stars; only for
  /// the receiver of the gift
  final bool wasConverted;

  /// [wasUpgraded] True, if the gift was upgraded to a unique gift
  final bool wasUpgraded;

  /// [wasRefunded] True, if the gift was refunded and isn't available anymore
  final bool wasRefunded;

  /// [upgradedReceivedGiftId] Identifier of the corresponding upgraded gift;
  /// may be empty if unknown. Use getReceivedGift to get information about the
  /// gift
  final String upgradedReceivedGiftId;

  /// [prepaidUpgradeHash] If non-empty, then the user can pay for an upgrade of
  /// the gift using buyGiftUpgrade
  final String prepaidUpgradeHash;

  static const String constructor = 'messageGift';

  static MessageGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGift(
      gift: Gift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?),
      receiverId:
          MessageSender.fromJson(json['receiver_id'] as Map<String, dynamic>?)!,
      receivedGiftId: json['received_gift_id'] as String,
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      uniqueGiftNumber: json['unique_gift_number'] as int,
      sellStarCount: json['sell_star_count'] as int,
      prepaidUpgradeStarCount: json['prepaid_upgrade_star_count'] as int,
      isUpgradeSeparate: json['is_upgrade_separate'] as bool,
      isFromAuction: json['is_from_auction'] as bool,
      isPrivate: json['is_private'] as bool,
      isSaved: json['is_saved'] as bool,
      isPrepaidUpgrade: json['is_prepaid_upgrade'] as bool,
      canBeUpgraded: json['can_be_upgraded'] as bool,
      wasConverted: json['was_converted'] as bool,
      wasUpgraded: json['was_upgraded'] as bool,
      wasRefunded: json['was_refunded'] as bool,
      upgradedReceivedGiftId: json['upgraded_received_gift_id'] as String,
      prepaidUpgradeHash: json['prepaid_upgrade_hash'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift': gift.toJson(),
        'sender_id': senderId?.toJson(),
        'receiver_id': receiverId.toJson(),
        'received_gift_id': receivedGiftId,
        'text': text.toJson(),
        'unique_gift_number': uniqueGiftNumber,
        'sell_star_count': sellStarCount,
        'prepaid_upgrade_star_count': prepaidUpgradeStarCount,
        'is_upgrade_separate': isUpgradeSeparate,
        'is_from_auction': isFromAuction,
        'is_private': isPrivate,
        'is_saved': isSaved,
        'is_prepaid_upgrade': isPrepaidUpgrade,
        'can_be_upgraded': canBeUpgraded,
        'was_converted': wasConverted,
        'was_upgraded': wasUpgraded,
        'was_refunded': wasRefunded,
        'upgraded_received_gift_id': upgradedReceivedGiftId,
        'prepaid_upgrade_hash': prepaidUpgradeHash,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageGift &&
          const DeepCollectionEquality().equals(other.gift, gift) &&
          const DeepCollectionEquality().equals(other.senderId, senderId) &&
          const DeepCollectionEquality().equals(other.receiverId, receiverId) &&
          const DeepCollectionEquality()
              .equals(other.receivedGiftId, receivedGiftId) &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality()
              .equals(other.uniqueGiftNumber, uniqueGiftNumber) &&
          const DeepCollectionEquality()
              .equals(other.sellStarCount, sellStarCount) &&
          const DeepCollectionEquality()
              .equals(other.prepaidUpgradeStarCount, prepaidUpgradeStarCount) &&
          const DeepCollectionEquality()
              .equals(other.isUpgradeSeparate, isUpgradeSeparate) &&
          const DeepCollectionEquality()
              .equals(other.isFromAuction, isFromAuction) &&
          const DeepCollectionEquality().equals(other.isPrivate, isPrivate) &&
          const DeepCollectionEquality().equals(other.isSaved, isSaved) &&
          const DeepCollectionEquality()
              .equals(other.isPrepaidUpgrade, isPrepaidUpgrade) &&
          const DeepCollectionEquality()
              .equals(other.canBeUpgraded, canBeUpgraded) &&
          const DeepCollectionEquality()
              .equals(other.wasConverted, wasConverted) &&
          const DeepCollectionEquality()
              .equals(other.wasUpgraded, wasUpgraded) &&
          const DeepCollectionEquality()
              .equals(other.wasRefunded, wasRefunded) &&
          const DeepCollectionEquality()
              .equals(other.upgradedReceivedGiftId, upgradedReceivedGiftId) &&
          const DeepCollectionEquality()
              .equals(other.prepaidUpgradeHash, prepaidUpgradeHash));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(gift),
        const DeepCollectionEquality().hash(senderId),
        const DeepCollectionEquality().hash(receiverId),
        const DeepCollectionEquality().hash(receivedGiftId),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(uniqueGiftNumber),
        const DeepCollectionEquality().hash(sellStarCount),
        const DeepCollectionEquality().hash(prepaidUpgradeStarCount),
        const DeepCollectionEquality().hash(isUpgradeSeparate),
        const DeepCollectionEquality().hash(isFromAuction),
        const DeepCollectionEquality().hash(isPrivate),
        const DeepCollectionEquality().hash(isSaved),
        const DeepCollectionEquality().hash(isPrepaidUpgrade),
        const DeepCollectionEquality().hash(canBeUpgraded),
        const DeepCollectionEquality().hash(wasConverted),
        const DeepCollectionEquality().hash(wasUpgraded),
        const DeepCollectionEquality().hash(wasRefunded),
        const DeepCollectionEquality().hash(upgradedReceivedGiftId),
        const DeepCollectionEquality().hash(prepaidUpgradeHash)
      ]);
}
