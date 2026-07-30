import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a gift received by a user or a chat
@immutable
class ReceivedGift extends TdObject {
  const ReceivedGift({
    required this.receivedGiftId,
    this.senderId,
    required this.text,
    required this.uniqueGiftNumber,
    required this.isPrivate,
    required this.isSaved,
    required this.isPinned,
    required this.canBeUpgraded,
    required this.canBeTransferred,
    required this.wasRefunded,
    required this.date,
    required this.gift,
    required this.collectionIds,
    required this.sellStarCount,
    required this.prepaidUpgradeStarCount,
    required this.isUpgradeSeparate,
    required this.transferStarCount,
    required this.dropOriginalDetailsStarCount,
    required this.nextTransferDate,
    required this.nextResaleDate,
    required this.exportDate,
    required this.prepaidUpgradeHash,
    required this.craftDate,
  });

  /// [receivedGiftId] Unique identifier of the received gift for the current
  /// user; only for the receiver of the gift
  final String receivedGiftId;

  /// [senderId] Identifier of a user or a chat that sent the gift; may be null
  /// if unknown
  final MessageSender? senderId;

  /// [text] Message added to the gift
  final FormattedText text;

  /// [uniqueGiftNumber] Unique number of the gift among gifts upgraded from the
  /// same gift after upgrade; 0 if yet unassigned
  final int uniqueGiftNumber;

  /// [isPrivate] True, if the sender and gift text are shown only to the gift
  /// receiver; otherwise, everyone are able to see them
  final bool isPrivate;

  /// [isSaved] True, if the gift is displayed on the chat's profile page; only
  /// for the receiver of the gift
  final bool isSaved;

  /// [isPinned] True, if the gift is pinned to the top of the chat's profile
  /// page
  final bool isPinned;

  /// [canBeUpgraded] True, if the gift is a regular gift that can be upgraded
  /// to a unique gift; only for the receiver of the gift
  final bool canBeUpgraded;

  /// [canBeTransferred] True, if the gift is an upgraded gift that can be
  /// transferred to another owner; only for the receiver of the gift
  final bool canBeTransferred;

  /// [wasRefunded] True, if the gift was refunded and isn't available anymore
  final bool wasRefunded;

  /// [date] Point in time (Unix timestamp) when the gift was sent
  final int date;

  /// [gift] The gift
  final SentGift gift;

  /// [collectionIds] Identifiers of collections to which the gift is added;
  /// only for the receiver of the gift
  final List<int> collectionIds;

  /// [sellStarCount] Number of Telegram Stars that can be claimed by the
  /// receiver instead of the regular gift; 0 if the gift can't be sold by the
  /// current user
  final int sellStarCount;

  /// [prepaidUpgradeStarCount] Number of Telegram Stars that were paid by the
  /// sender for the ability to upgrade the gift
  final int prepaidUpgradeStarCount;

  /// [isUpgradeSeparate] True, if the upgrade was bought after the gift was
  /// sent. In this case, prepaid upgrade cost must not be added to the gift
  /// cost
  final bool isUpgradeSeparate;

  /// [transferStarCount] Number of Telegram Stars that must be paid to transfer
  /// the upgraded gift; only for the receiver of the gift
  final int transferStarCount;

  /// [dropOriginalDetailsStarCount] Number of Telegram Stars that must be paid
  /// to drop original details of the upgraded gift; 0 if not available; only
  /// for the receiver of the gift
  final int dropOriginalDetailsStarCount;

  /// [nextTransferDate] Point in time (Unix timestamp) when the gift can be
  /// transferred to another owner; can be in the past; 0 if the gift can be
  /// transferred immediately or transfer isn't possible; only for the receiver
  /// of the gift
  final int nextTransferDate;

  /// [nextResaleDate] Point in time (Unix timestamp) when the gift can be
  /// resold to another user; can be in the past; 0 if the gift can't be resold;
  /// only for the receiver of the gift
  final int nextResaleDate;

  /// [exportDate] Point in time (Unix timestamp) when the upgraded gift can be
  /// transferred to the TON blockchain as an NFT; can be in the past; 0 if NFT
  /// export isn't possible; only for the receiver of the gift
  final int exportDate;

  /// [prepaidUpgradeHash] If non-empty, then the user can pay for an upgrade of
  /// the gift using buyGiftUpgrade
  final String prepaidUpgradeHash;

  /// [craftDate] Point in time (Unix timestamp) when the gift can be used to
  /// craft another gift; can be in the past; only for the receiver of the gift
  final int craftDate;

  static const String constructor = 'receivedGift';

  static ReceivedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReceivedGift(
      receivedGiftId: json['received_gift_id'] as String,
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?),
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      uniqueGiftNumber: json['unique_gift_number'] as int,
      isPrivate: json['is_private'] as bool,
      isSaved: json['is_saved'] as bool,
      isPinned: json['is_pinned'] as bool,
      canBeUpgraded: json['can_be_upgraded'] as bool,
      canBeTransferred: json['can_be_transferred'] as bool,
      wasRefunded: json['was_refunded'] as bool,
      date: json['date'] as int,
      gift: SentGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      collectionIds: List<int>.from(
          ((json['collection_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      sellStarCount: json['sell_star_count'] as int,
      prepaidUpgradeStarCount: json['prepaid_upgrade_star_count'] as int,
      isUpgradeSeparate: json['is_upgrade_separate'] as bool,
      transferStarCount: json['transfer_star_count'] as int,
      dropOriginalDetailsStarCount:
          json['drop_original_details_star_count'] as int,
      nextTransferDate: json['next_transfer_date'] as int,
      nextResaleDate: json['next_resale_date'] as int,
      exportDate: json['export_date'] as int,
      prepaidUpgradeHash: json['prepaid_upgrade_hash'] as String,
      craftDate: json['craft_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'received_gift_id': receivedGiftId,
        'sender_id': senderId?.toJson(),
        'text': text.toJson(),
        'unique_gift_number': uniqueGiftNumber,
        'is_private': isPrivate,
        'is_saved': isSaved,
        'is_pinned': isPinned,
        'can_be_upgraded': canBeUpgraded,
        'can_be_transferred': canBeTransferred,
        'was_refunded': wasRefunded,
        'date': date,
        'gift': gift.toJson(),
        'collection_ids': collectionIds.map((item) => item).toList(),
        'sell_star_count': sellStarCount,
        'prepaid_upgrade_star_count': prepaidUpgradeStarCount,
        'is_upgrade_separate': isUpgradeSeparate,
        'transfer_star_count': transferStarCount,
        'drop_original_details_star_count': dropOriginalDetailsStarCount,
        'next_transfer_date': nextTransferDate,
        'next_resale_date': nextResaleDate,
        'export_date': exportDate,
        'prepaid_upgrade_hash': prepaidUpgradeHash,
        'craft_date': craftDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
