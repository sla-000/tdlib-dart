// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is an upgrade of a gift; relevant for regular users only
@immutable
class StarTransactionTypeGiftUpgrade extends StarTransactionType {
  const StarTransactionTypeGiftUpgrade({
    required this.userId,
    required this.gift,
  });

  /// [userId] Identifier of the user who initially sent the gift
  final int userId;

  /// [gift] The upgraded gift
  final UpgradedGift gift;

  static const String constructor = 'starTransactionTypeGiftUpgrade';

  static StarTransactionTypeGiftUpgrade? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiftUpgrade(
      userId: (json['user_id'] as int?) ?? 0,
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
          other is StarTransactionTypeGiftUpgrade &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.gift, gift));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(gift)
      ]);
}
