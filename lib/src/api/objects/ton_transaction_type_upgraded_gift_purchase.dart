import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a purchase of an upgraded gift for some user or channel
@immutable
class TonTransactionTypeUpgradedGiftPurchase extends TonTransactionType {
  const TonTransactionTypeUpgradedGiftPurchase({
    required this.userId,
    required this.gift,
  });

  /// [userId] Identifier of the user who sold the gift
  final int userId;

  /// [gift] The gift
  final UpgradedGift gift;

  static const String constructor = 'tonTransactionTypeUpgradedGiftPurchase';

  static TonTransactionTypeUpgradedGiftPurchase? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TonTransactionTypeUpgradedGiftPurchase(
      userId: json['user_id'] as int,
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'gift': gift.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
