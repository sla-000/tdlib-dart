import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a sale of an upgraded gift
@immutable
class TonTransactionTypeUpgradedGiftSale extends TonTransactionType {
  const TonTransactionTypeUpgradedGiftSale({
    required this.userId,
    required this.gift,
    required this.commissionPerMille,
    required this.commissionGramAmount,
    required this.viaOffer,
  });

  /// [userId] Identifier of the user who bought the gift
  final int userId;

  /// [gift] The gift
  final UpgradedGift gift;

  /// [commissionPerMille] The number of Grams received by the Telegram for each
  /// 1000 Grams received by the seller of the gift
  final int commissionPerMille;

  /// [commissionGramAmount] The Gram amount that was received by the Telegram;
  /// in the smallest units of the currency
  final int commissionGramAmount;

  /// [viaOffer] True, if the gift was sold through a purchase offer
  final bool viaOffer;

  static const String constructor = 'tonTransactionTypeUpgradedGiftSale';

  static TonTransactionTypeUpgradedGiftSale? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TonTransactionTypeUpgradedGiftSale(
      userId: json['user_id'] as int,
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      commissionPerMille: json['commission_per_mille'] as int,
      commissionGramAmount: json['commission_gram_amount'] as int,
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
        'commission_gram_amount': commissionGramAmount,
        'via_offer': viaOffer,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
