// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a purchase of Telegram Premium subscription; relevant
/// for regular users and bots only
@immutable
class StarTransactionTypePremiumPurchase extends StarTransactionType {
  const StarTransactionTypePremiumPurchase({
    required this.userId,
    required this.monthCount,
    this.sticker,
  });

  /// [userId] Identifier of the user who received the Telegram Premium
  /// subscription
  final int userId;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active
  final int monthCount;

  /// [sticker] A sticker to be shown in the transaction information; may be
  /// null if unknown
  final Sticker? sticker;

  static const String constructor = 'starTransactionTypePremiumPurchase';

  static StarTransactionTypePremiumPurchase? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypePremiumPurchase(
      userId: (json['user_id'] as int?) ?? 0,
      monthCount: (json['month_count'] as int?) ?? 0,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'month_count': monthCount,
        'sticker': sticker?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypePremiumPurchase &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality().equals(other.monthCount, monthCount) &&
          const DeepCollectionEquality().equals(other.sticker, sticker));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(monthCount),
        const DeepCollectionEquality().hash(sticker)
      ]);
}
