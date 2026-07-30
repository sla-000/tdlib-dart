// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a sale of a subscription by the channel chat; relevant
/// for channel chats only
@immutable
class StarTransactionTypeChannelSubscriptionSale extends StarTransactionType {
  const StarTransactionTypeChannelSubscriptionSale({
    required this.userId,
    required this.subscriptionPeriod,
  });

  /// [userId] Identifier of the user who bought the subscription
  final int userId;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram
  /// Star debitings
  final int subscriptionPeriod;

  static const String constructor =
      'starTransactionTypeChannelSubscriptionSale';

  static StarTransactionTypeChannelSubscriptionSale? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeChannelSubscriptionSale(
      userId: (json['user_id'] as int?) ?? 0,
      subscriptionPeriod: (json['subscription_period'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'subscription_period': subscriptionPeriod,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypeChannelSubscriptionSale &&
          const DeepCollectionEquality().equals(other.userId, userId) &&
          const DeepCollectionEquality()
              .equals(other.subscriptionPeriod, subscriptionPeriod));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(subscriptionPeriod)
      ]);
}
