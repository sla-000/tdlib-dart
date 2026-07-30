// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a sale of a received gift; relevant for regular users
/// and channel chats only
@immutable
class StarTransactionTypeGiftSale extends StarTransactionType {
  const StarTransactionTypeGiftSale({
    required this.userId,
    required this.gift,
  });

  /// [userId] Identifier of the user who sent the gift
  final int userId;

  /// [gift] The gift
  final Gift gift;

  static const String constructor = 'starTransactionTypeGiftSale';

  static StarTransactionTypeGiftSale? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiftSale(
      userId: json['user_id'] as int,
      gift: Gift.fromJson(json['gift'] as Map<String, dynamic>?)!,
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
          other is StarTransactionTypeGiftSale &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.gift, gift));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(gift)
      ]);
}
