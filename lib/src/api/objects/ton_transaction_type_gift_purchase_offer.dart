import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is an offer of gift purchase
@immutable
class TonTransactionTypeGiftPurchaseOffer extends TonTransactionType {
  const TonTransactionTypeGiftPurchaseOffer({
    required this.gift,
  });

  /// [gift] The gift
  final UpgradedGift gift;

  static const String constructor = 'tonTransactionTypeGiftPurchaseOffer';

  static TonTransactionTypeGiftPurchaseOffer? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TonTransactionTypeGiftPurchaseOffer(
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift': gift.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
