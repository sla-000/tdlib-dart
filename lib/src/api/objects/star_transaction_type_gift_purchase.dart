// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a purchase of a regular gift; relevant for regular
/// users and bots only
@immutable
class StarTransactionTypeGiftPurchase extends StarTransactionType {
  const StarTransactionTypeGiftPurchase({
    required this.ownerId,
    required this.gift,
  });

  /// [ownerId] Identifier of the user or the channel that received the gift
  final MessageSender ownerId;

  /// [gift] The gift
  final Gift gift;

  static const String constructor = 'starTransactionTypeGiftPurchase';

  static StarTransactionTypeGiftPurchase? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiftPurchase(
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
          other is StarTransactionTypeGiftPurchase &&
          const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
          const DeepCollectionEquality().equals(other.gift, gift));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(ownerId),
        const DeepCollectionEquality().hash(gift)
      ]);
}
