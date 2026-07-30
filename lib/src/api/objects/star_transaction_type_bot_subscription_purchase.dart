// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a purchase of a subscription from a bot or a business
/// account by the current user; relevant for regular users only
@immutable
class StarTransactionTypeBotSubscriptionPurchase extends StarTransactionType {
  const StarTransactionTypeBotSubscriptionPurchase({
    required this.userId,
    required this.subscriptionPeriod,
    required this.productInfo,
  });

  /// [userId] Identifier of the bot or the business account user who created
  /// the subscription link
  final int userId;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram
  /// Star debitings
  final int subscriptionPeriod;

  /// [productInfo] Information about the bought subscription
  final ProductInfo productInfo;

  static const String constructor =
      'starTransactionTypeBotSubscriptionPurchase';

  static StarTransactionTypeBotSubscriptionPurchase? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBotSubscriptionPurchase(
      userId: json['user_id'] as int,
      subscriptionPeriod: json['subscription_period'] as int,
      productInfo:
          ProductInfo.fromJson(json['product_info'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'subscription_period': subscriptionPeriod,
        'product_info': productInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypeBotSubscriptionPurchase &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality()
              .equals(other.subscriptionPeriod, subscriptionPeriod) &&
          const DeepCollectionEquality()
              .equals(other.productInfo, productInfo));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(subscriptionPeriod),
        const DeepCollectionEquality().hash(productInfo)
      ]);
}
