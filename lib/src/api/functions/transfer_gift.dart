// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sends an upgraded gift to another user or channel chat
/// Returns [Ok]
@immutable
class TransferGift extends TdFunction {
  const TransferGift({
    this.businessConnectionId,
    required this.receivedGiftId,
    required this.newOwnerId,
    required this.starCount,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which to send the request; for bots only
  final String? businessConnectionId;

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  /// [newOwnerId] Identifier of the user or the channel chat that will receive
  /// the gift
  final MessageSender newOwnerId;

  /// [starCount] The Telegram Star amount required to pay for the transfer
  final int starCount;

  static const String constructor = 'transferGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'received_gift_id': receivedGiftId,
        'new_owner_id': newOwnerId.toJson(),
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is TransferGift &&
          const DeepCollectionEquality()
              .equals(other.businessConnectionId, businessConnectionId) &&
          const DeepCollectionEquality()
              .equals(other.receivedGiftId, receivedGiftId) &&
          const DeepCollectionEquality().equals(other.newOwnerId, newOwnerId) &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(businessConnectionId),
        const DeepCollectionEquality().hash(receivedGiftId),
        const DeepCollectionEquality().hash(newOwnerId),
        const DeepCollectionEquality().hash(starCount)
      ]);
}
