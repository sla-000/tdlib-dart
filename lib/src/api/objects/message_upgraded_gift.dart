// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An upgraded gift was received or sent by the current user, or the current
/// user was notified about a channel gift
@immutable
class MessageUpgradedGift extends MessageContent {
  const MessageUpgradedGift({
    required this.gift,
    this.senderId,
    required this.receiverId,
    required this.origin,
    required this.receivedGiftId,
    required this.isSaved,
    required this.canBeTransferred,
    required this.wasTransferred,
    required this.transferStarCount,
    required this.dropOriginalDetailsStarCount,
    required this.nextTransferDate,
    required this.nextResaleDate,
    required this.exportDate,
    required this.craftDate,
  });

  /// [gift] The gift
  final UpgradedGift gift;

  /// [senderId] Sender of the gift; may be null for anonymous gifts
  final MessageSender? senderId;

  /// [receiverId] Receiver of the gift
  final MessageSender receiverId;

  /// [origin] Origin of the upgraded gift
  final UpgradedGiftOrigin origin;

  /// [receivedGiftId] Unique identifier of the received gift for the current
  /// user; only for the receiver of the gift
  final String receivedGiftId;

  /// [isSaved] True, if the gift is displayed on the user's or the channel's
  /// profile page; only for the receiver of the gift
  final bool isSaved;

  /// [canBeTransferred] True, if the gift can be transferred to another owner;
  /// only for the receiver of the gift
  final bool canBeTransferred;

  /// [wasTransferred] True, if the gift has already been transferred to another
  /// owner; only for the receiver of the gift
  final bool wasTransferred;

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

  /// [exportDate] Point in time (Unix timestamp) when the gift can be
  /// transferred to the TON blockchain as an NFT; can be in the past; 0 if NFT
  /// export isn't possible; only for the receiver of the gift
  final int exportDate;

  /// [craftDate] Point in time (Unix timestamp) when the gift can be used to
  /// craft another gift can be in the past; only for the receiver of the gift
  final int craftDate;

  static const String constructor = 'messageUpgradedGift';

  static MessageUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageUpgradedGift(
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      senderId:
          MessageSender.fromJson(json['sender_id'] as Map<String, dynamic>?),
      receiverId:
          MessageSender.fromJson(json['receiver_id'] as Map<String, dynamic>?)!,
      origin:
          UpgradedGiftOrigin.fromJson(json['origin'] as Map<String, dynamic>?)!,
      receivedGiftId: json['received_gift_id'] as String,
      isSaved: json['is_saved'] as bool,
      canBeTransferred: json['can_be_transferred'] as bool,
      wasTransferred: json['was_transferred'] as bool,
      transferStarCount: json['transfer_star_count'] as int,
      dropOriginalDetailsStarCount:
          json['drop_original_details_star_count'] as int,
      nextTransferDate: json['next_transfer_date'] as int,
      nextResaleDate: json['next_resale_date'] as int,
      exportDate: json['export_date'] as int,
      craftDate: json['craft_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift': gift.toJson(),
        'sender_id': senderId?.toJson(),
        'receiver_id': receiverId.toJson(),
        'origin': origin.toJson(),
        'received_gift_id': receivedGiftId,
        'is_saved': isSaved,
        'can_be_transferred': canBeTransferred,
        'was_transferred': wasTransferred,
        'transfer_star_count': transferStarCount,
        'drop_original_details_star_count': dropOriginalDetailsStarCount,
        'next_transfer_date': nextTransferDate,
        'next_resale_date': nextResaleDate,
        'export_date': exportDate,
        'craft_date': craftDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is MessageUpgradedGift &&
          const DeepCollectionEquality().equals(other.gift, gift) &&
          const DeepCollectionEquality().equals(other.senderId, senderId) &&
          const DeepCollectionEquality().equals(other.receiverId, receiverId) &&
          const DeepCollectionEquality().equals(other.origin, origin) &&
          const DeepCollectionEquality()
              .equals(other.receivedGiftId, receivedGiftId) &&
          const DeepCollectionEquality().equals(other.isSaved, isSaved) &&
          const DeepCollectionEquality()
              .equals(other.canBeTransferred, canBeTransferred) &&
          const DeepCollectionEquality()
              .equals(other.wasTransferred, wasTransferred) &&
          const DeepCollectionEquality()
              .equals(other.transferStarCount, transferStarCount) &&
          const DeepCollectionEquality().equals(
              other.dropOriginalDetailsStarCount,
              dropOriginalDetailsStarCount) &&
          const DeepCollectionEquality()
              .equals(other.nextTransferDate, nextTransferDate) &&
          const DeepCollectionEquality()
              .equals(other.nextResaleDate, nextResaleDate) &&
          const DeepCollectionEquality().equals(other.exportDate, exportDate) &&
          const DeepCollectionEquality().equals(other.craftDate, craftDate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(gift),
        const DeepCollectionEquality().hash(senderId),
        const DeepCollectionEquality().hash(receiverId),
        const DeepCollectionEquality().hash(origin),
        const DeepCollectionEquality().hash(receivedGiftId),
        const DeepCollectionEquality().hash(isSaved),
        const DeepCollectionEquality().hash(canBeTransferred),
        const DeepCollectionEquality().hash(wasTransferred),
        const DeepCollectionEquality().hash(transferStarCount),
        const DeepCollectionEquality().hash(dropOriginalDetailsStarCount),
        const DeepCollectionEquality().hash(nextTransferDate),
        const DeepCollectionEquality().hash(nextResaleDate),
        const DeepCollectionEquality().hash(exportDate),
        const DeepCollectionEquality().hash(craftDate)
      ]);
}
