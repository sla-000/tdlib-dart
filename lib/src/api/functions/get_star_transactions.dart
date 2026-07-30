// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns the list of Telegram Star transactions for the specified owner
/// Returns [StarTransactions]
@immutable
class GetStarTransactions extends TdFunction {
  const GetStarTransactions({
    required this.ownerId,
    required this.subscriptionId,
    this.direction,
    required this.offset,
    required this.limit,
  });

  /// [ownerId] Identifier of the owner of the Telegram Stars; can be the
  /// identifier of the current user, identifier of an owned bot, or identifier
  /// of a supergroup or a channel chat with
  /// supergroupFullInfo.can_get_star_revenue_statistics == true
  final MessageSender ownerId;

  /// [subscriptionId] If non-empty, only transactions related to the Star
  /// Subscription will be returned
  final String subscriptionId;

  /// [direction] Direction of the transactions to receive; pass null to get all
  /// transactions
  final TransactionDirection? direction;

  /// [offset] Offset of the first transaction to return as received from the
  /// previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of transactions to return
  final int limit;

  static const String constructor = 'getStarTransactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'subscription_id': subscriptionId,
        'direction': direction?.toJson(),
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetStarTransactions &&
          const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
          const DeepCollectionEquality()
              .equals(other.subscriptionId, subscriptionId) &&
          const DeepCollectionEquality().equals(other.direction, direction) &&
          const DeepCollectionEquality().equals(other.offset, offset) &&
          const DeepCollectionEquality().equals(other.limit, limit));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(ownerId),
        const DeepCollectionEquality().hash(subscriptionId),
        const DeepCollectionEquality().hash(direction),
        const DeepCollectionEquality().hash(offset),
        const DeepCollectionEquality().hash(limit)
      ]);
}
