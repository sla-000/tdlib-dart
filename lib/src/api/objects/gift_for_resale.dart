// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a gift available for resale
@immutable
class GiftForResale extends TdObject {
  const GiftForResale({
    required this.gift,
    required this.receivedGiftId,
  });

  /// [gift] The gift
  final UpgradedGift gift;

  /// [receivedGiftId] Unique identifier of the received gift for the current
  /// user; only for the gifts owned by the current user
  final String receivedGiftId;

  static const String constructor = 'giftForResale';

  static GiftForResale? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftForResale(
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      receivedGiftId: (json['received_gift_id'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift': gift.toJson(),
        'received_gift_id': receivedGiftId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GiftForResale &&
          const DeepCollectionEquality().equals(other.gift, gift) &&
          const DeepCollectionEquality()
              .equals(other.receivedGiftId, receivedGiftId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(gift),
        const DeepCollectionEquality().hash(receivedGiftId)
      ]);
}
