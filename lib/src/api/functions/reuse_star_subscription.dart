// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Reuses an active Telegram Star subscription to a channel chat and joins
/// the chat again
/// Returns [Ok]
@immutable
class ReuseStarSubscription extends TdFunction {
  const ReuseStarSubscription({
    required this.subscriptionId,
  });

  /// [subscriptionId] Identifier of the subscription
  final String subscriptionId;

  static const String constructor = 'reuseStarSubscription';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'subscription_id': subscriptionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReuseStarSubscription &&
          const DeepCollectionEquality()
              .equals(other.subscriptionId, subscriptionId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(subscriptionId)]);
}
