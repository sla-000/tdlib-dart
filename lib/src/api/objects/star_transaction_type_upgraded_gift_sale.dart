// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a sale of an upgraded gift; relevant for regular users
/// only
@immutable
class StarTransactionTypeUpgradedGiftSale extends StarTransactionType {
  const StarTransactionTypeUpgradedGiftSale({
    required this.userId,
    required this.gift,
    required this.commissionPerMille,
    required this.commissionStarAmount,
    required this.viaOffer,
  });

  /// [userId] Identifier of the user who bought the gift
  final int userId;

  /// [gift] The gift
  final UpgradedGift gift;

  /// [commissionPerMille] The number of Telegram Stars received by the Telegram
  /// for each 1000 Telegram Stars received by the seller of the gift
  final int commissionPerMille;

  /// [commissionStarAmount] The Telegram Star amount that was received by
  /// Telegram; can be negative for refunds
  final StarAmount commissionStarAmount;

  /// [viaOffer] True, if the gift was sold through a purchase offer
  final bool viaOffer;

  static const String constructor = 'starTransactionTypeUpgradedGiftSale';

  static StarTransactionTypeUpgradedGiftSale? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeUpgradedGiftSale(
      userId: json['user_id'] as int,
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      commissionPerMille: json['commission_per_mille'] as int,
      commissionStarAmount: StarAmount.fromJson(
          json['commission_star_amount'] as Map<String, dynamic>?)!,
      viaOffer: json['via_offer'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'gift': gift.toJson(),
        'commission_per_mille': commissionPerMille,
        'commission_star_amount': commissionStarAmount.toJson(),
        'via_offer': viaOffer,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypeUpgradedGiftSale &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.gift, gift) &&
          const DeepCollectionEquality()
              .equals(other.commissionPerMille, commissionPerMille) &&
          const DeepCollectionEquality()
              .equals(other.commissionStarAmount, commissionStarAmount) &&
          const DeepCollectionEquality().equals(other.viaOffer, viaOffer));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(gift),
        const DeepCollectionEquality().hash(commissionPerMille),
        const DeepCollectionEquality().hash(commissionStarAmount),
        const DeepCollectionEquality().hash(viaOffer)
      ]);
}
