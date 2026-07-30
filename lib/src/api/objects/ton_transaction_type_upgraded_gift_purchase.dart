// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TonTransactionTypeUpgradedGiftPurchase &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.gift, gift));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(gift)
      ]);
}
