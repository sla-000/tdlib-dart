// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sells a gift for Telegram Stars; requires owner privileges for gifts owned
/// by a chat
/// Returns [Ok]
@immutable
class SellGift extends TdFunction {
  const SellGift({
    this.businessConnectionId,
    required this.receivedGiftId,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which to send the request; for bots only
  final String? businessConnectionId;

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  static const String constructor = 'sellGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'received_gift_id': receivedGiftId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SellGift &&
          const DeepCollectionEquality()
              .equals(other.businessConnectionId, businessConnectionId) &&
          const DeepCollectionEquality()
              .equals(other.receivedGiftId, receivedGiftId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(businessConnectionId),
        const DeepCollectionEquality().hash(receivedGiftId)
      ]);
}
