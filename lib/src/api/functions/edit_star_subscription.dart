// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Cancels or re-enables Telegram Star subscription
/// Returns [Ok]
@immutable
class EditStarSubscription extends TdFunction {
  const EditStarSubscription({
    required this.subscriptionId,
    required this.isCanceled,
  });

  /// [subscriptionId] Identifier of the subscription to change
  final String subscriptionId;

  /// [isCanceled] New value of is_canceled
  final bool isCanceled;

  static const String constructor = 'editStarSubscription';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'subscription_id': subscriptionId,
        'is_canceled': isCanceled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is EditStarSubscription &&
          const DeepCollectionEquality()
              .equals(other.subscriptionId, subscriptionId) &&
          const DeepCollectionEquality().equals(other.isCanceled, isCanceled));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(subscriptionId),
        const DeepCollectionEquality().hash(isCanceled)
      ]);
}
