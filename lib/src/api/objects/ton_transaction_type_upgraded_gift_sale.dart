// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a sale of an upgraded gift
@immutable
class TonTransactionTypeUpgradedGiftSale extends TonTransactionType {
  const TonTransactionTypeUpgradedGiftSale({
    required this.userId,
    required this.gift,
    required this.commissionPerMille,
    required this.commissionToncoinAmount,
    required this.viaOffer,
  });

  /// [userId] Identifier of the user who bought the gift
  final int userId;

  /// [gift] The gift
  final UpgradedGift gift;

  /// [commissionPerMille] The number of Toncoins received by the Telegram for
  /// each 1000 Toncoins received by the seller of the gift
  final int commissionPerMille;

  /// [commissionToncoinAmount] The Toncoin amount that was received by the
  /// Telegram; in the smallest units of the currency
  final int commissionToncoinAmount;

  /// [viaOffer] True, if the gift was sold through a purchase offer
  final bool viaOffer;

  static const String constructor = 'tonTransactionTypeUpgradedGiftSale';

  static TonTransactionTypeUpgradedGiftSale? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TonTransactionTypeUpgradedGiftSale(
      userId: (json['user_id'] as int?) ?? 0,
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      commissionPerMille: (json['commission_per_mille'] as int?) ?? 0,
      commissionToncoinAmount: (json['commission_toncoin_amount'] as int?) ?? 0,
      viaOffer: (json['via_offer'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'gift': gift.toJson(),
        'commission_per_mille': commissionPerMille,
        'commission_toncoin_amount': commissionToncoinAmount,
        'via_offer': viaOffer,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TonTransactionTypeUpgradedGiftSale &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.gift, gift) &&
          const DeepCollectionEquality()
              .equals(other.commissionPerMille, commissionPerMille) &&
          const DeepCollectionEquality()
              .equals(other.commissionToncoinAmount, commissionToncoinAmount) &&
          const DeepCollectionEquality().equals(other.viaOffer, viaOffer));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(gift),
        const DeepCollectionEquality().hash(commissionPerMille),
        const DeepCollectionEquality().hash(commissionToncoinAmount),
        const DeepCollectionEquality().hash(viaOffer)
      ]);
}
