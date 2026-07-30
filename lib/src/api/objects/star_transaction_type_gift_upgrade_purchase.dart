// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a purchase of an upgrade of a gift owned by another
/// user or channel; relevant for regular users only
@immutable
class StarTransactionTypeGiftUpgradePurchase extends StarTransactionType {
  const StarTransactionTypeGiftUpgradePurchase({
    required this.ownerId,
    required this.gift,
  });

  /// [ownerId] Owner of the upgraded gift
  final MessageSender ownerId;

  /// [gift] The gift
  final Gift gift;

  static const String constructor = 'starTransactionTypeGiftUpgradePurchase';

  static StarTransactionTypeGiftUpgradePurchase? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiftUpgradePurchase(
      ownerId:
          MessageSender.fromJson(json['owner_id'] as Map<String, dynamic>?)!,
      gift: Gift.fromJson(json['gift'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'gift': gift.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypeGiftUpgradePurchase &&
          const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
          const DeepCollectionEquality().equals(other.gift, gift));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(ownerId),
        const DeepCollectionEquality().hash(gift)
      ]);
}
