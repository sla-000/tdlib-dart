// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The transaction is a drop of original details of an upgraded gift;
/// relevant for regular users only
@immutable
class StarTransactionTypeGiftOriginalDetailsDrop extends StarTransactionType {
  const StarTransactionTypeGiftOriginalDetailsDrop({
    required this.ownerId,
    required this.gift,
  });

  /// [ownerId] Identifier of the user or the channel that owns the gift
  final MessageSender ownerId;

  /// [gift] The gift
  final UpgradedGift gift;

  static const String constructor =
      'starTransactionTypeGiftOriginalDetailsDrop';

  static StarTransactionTypeGiftOriginalDetailsDrop? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiftOriginalDetailsDrop(
      ownerId:
          MessageSender.fromJson(json['owner_id'] as Map<String, dynamic>?)!,
      gift: UpgradedGift.fromJson(json['gift'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'gift': gift.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarTransactionTypeGiftOriginalDetailsDrop &&
          const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
          const DeepCollectionEquality().equals(other.gift, gift));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(ownerId),
        const DeepCollectionEquality().hash(gift)
      ]);
}
