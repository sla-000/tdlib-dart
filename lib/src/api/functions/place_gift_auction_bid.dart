// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Places a bid on an auction gift
/// Returns [Ok]
@immutable
class PlaceGiftAuctionBid extends TdFunction {
  const PlaceGiftAuctionBid({
    required this.giftId,
    required this.starCount,
    required this.userId,
    required this.text,
    required this.isPrivate,
  });

  /// [giftId] Identifier of the gift to place the bid on
  final int giftId;

  /// [starCount] The number of Telegram Stars to place in the bid
  final int starCount;

  /// [userId] Identifier of the user who will receive the gift
  final int userId;

  /// [text] Text to show along with the gift;
  /// 0-getOption("gift_text_length_max") characters. Only Bold, Italic,
  /// Underline, Strikethrough, Spoiler, CustomEmoji, and DateTime entities are
  /// allowed. Must be empty if the receiver enabled paid messages
  final FormattedText text;

  /// [isPrivate] Pass true to show gift text and sender only to the gift
  /// receiver; otherwise, everyone will be able to see them
  final bool isPrivate;

  static const String constructor = 'placeGiftAuctionBid';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift_id': giftId.toString(),
        'star_count': starCount,
        'user_id': userId,
        'text': text.toJson(),
        'is_private': isPrivate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PlaceGiftAuctionBid &&
          const DeepCollectionEquality().equals(other.giftId, giftId) &&
          const DeepCollectionEquality().equals(other.starCount, starCount) &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.isPrivate, isPrivate));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(giftId),
        const DeepCollectionEquality().hash(starCount),
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(isPrivate)
      ]);
}
