// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Upgrades a regular gift
/// Returns [UpgradeGiftResult]
@immutable
class UpgradeGift extends TdFunction {
  const UpgradeGift({
    this.businessConnectionId,
    required this.receivedGiftId,
    required this.keepOriginalDetails,
    required this.starCount,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which to send the request; for bots only
  final String? businessConnectionId;

  /// [receivedGiftId] Identifier of the gift
  final String receivedGiftId;

  /// [keepOriginalDetails] Pass true to keep the original gift text, sender and
  /// receiver in the upgraded gift
  final bool keepOriginalDetails;

  /// [starCount] The Telegram Star amount required to pay for the upgrade. If
  /// the gift has prepaid_upgrade_star_count
  final int starCount;

  static const String constructor = 'upgradeGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'received_gift_id': receivedGiftId,
        'keep_original_details': keepOriginalDetails,
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradeGift &&
          const DeepCollectionEquality()
              .equals(other.businessConnectionId, businessConnectionId) &&
          const DeepCollectionEquality()
              .equals(other.receivedGiftId, receivedGiftId) &&
          const DeepCollectionEquality()
              .equals(other.keepOriginalDetails, keepOriginalDetails) &&
          const DeepCollectionEquality().equals(other.starCount, starCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(businessConnectionId),
        const DeepCollectionEquality().hash(receivedGiftId),
        const DeepCollectionEquality().hash(keepOriginalDetails),
        const DeepCollectionEquality().hash(starCount)
      ]);
}
