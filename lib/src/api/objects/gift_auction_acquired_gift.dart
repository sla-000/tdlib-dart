// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Represents a gift that was acquired by the current user on an auction
@immutable
class GiftAuctionAcquiredGift extends TdObject {
  const GiftAuctionAcquiredGift({
    required this.receiverId,
    required this.date,
    required this.starCount,
    required this.auctionRoundNumber,
    required this.auctionRoundPosition,
    required this.uniqueGiftNumber,
    required this.text,
    required this.isPrivate,
  });

  /// [receiverId] Receiver of the gift
  final MessageSender receiverId;

  /// [date] Point in time (Unix timestamp) when the gift was acquired
  final int date;

  /// [starCount] The number of Telegram Stars that were paid for the gift
  final int starCount;

  /// [auctionRoundNumber] Identifier of the auction round in which the gift was
  /// acquired
  final int auctionRoundNumber;

  /// [auctionRoundPosition] Position of the user in the round among all auction
  /// participants
  final int auctionRoundPosition;

  /// [uniqueGiftNumber] Unique number of the gift among gifts upgraded from the
  /// same gift after upgrade; 0 if yet unassigned
  final int uniqueGiftNumber;

  /// [text] Message added to the gift
  final FormattedText text;

  /// [isPrivate] True, if the sender and gift text are shown only to the gift
  /// receiver; otherwise, everyone will be able to see them
  final bool isPrivate;

  static const String constructor = 'giftAuctionAcquiredGift';

  static GiftAuctionAcquiredGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftAuctionAcquiredGift(
      receiverId:
          MessageSender.fromJson(json['receiver_id'] as Map<String, dynamic>?)!,
      date: json['date'] as int,
      starCount: json['star_count'] as int,
      auctionRoundNumber: json['auction_round_number'] as int,
      auctionRoundPosition: json['auction_round_position'] as int,
      uniqueGiftNumber: json['unique_gift_number'] as int,
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      isPrivate: json['is_private'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'receiver_id': receiverId.toJson(),
        'date': date,
        'star_count': starCount,
        'auction_round_number': auctionRoundNumber,
        'auction_round_position': auctionRoundPosition,
        'unique_gift_number': uniqueGiftNumber,
        'text': text.toJson(),
        'is_private': isPrivate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftAuctionAcquiredGift &&
          const DeepCollectionEquality().equals(other.receiverId, receiverId) &&
          const DeepCollectionEquality().equals(other.date, date) &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality()
              .equals(other.auctionRoundNumber, auctionRoundNumber) &&
          const DeepCollectionEquality()
              .equals(other.auctionRoundPosition, auctionRoundPosition) &&
          const DeepCollectionEquality()
              .equals(other.uniqueGiftNumber, uniqueGiftNumber) &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.isPrivate, isPrivate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(receiverId),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(auctionRoundNumber),
        const DeepCollectionEquality().hash(auctionRoundPosition),
        const DeepCollectionEquality().hash(uniqueGiftNumber),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(isPrivate)
      ]);
}
