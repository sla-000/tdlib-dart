// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Pays for upgrade of a regular gift that is owned by another user or
/// channel chat
/// Returns [Ok]
@immutable
class BuyGiftUpgrade extends TdFunction {
  const BuyGiftUpgrade({
    required this.ownerId,
    required this.prepaidUpgradeHash,
    required this.starCount,
  });

  /// [ownerId] Identifier of the user or the channel chat that owns the gift
  final MessageSender ownerId;

  /// [prepaidUpgradeHash] Prepaid upgrade hash as received along with the gift
  final String prepaidUpgradeHash;

  /// [starCount] The Telegram Star amount the user agreed to pay for the
  /// upgrade; must be equal to gift.upgrade_star_count
  final int starCount;

  static const String constructor = 'buyGiftUpgrade';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'prepaid_upgrade_hash': prepaidUpgradeHash,
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BuyGiftUpgrade &&
          const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
          const DeepCollectionEquality()
              .equals(other.prepaidUpgradeHash, prepaidUpgradeHash) &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(ownerId),
        const DeepCollectionEquality().hash(prepaidUpgradeHash),
        const DeepCollectionEquality().hash(starCount)
      ]);
}
