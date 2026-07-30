// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes origin from which the upgraded gift was obtained
@immutable
abstract class UpgradedGiftOrigin extends TdObject {
  const UpgradedGiftOrigin();

  static const String constructor = 'upgradedGiftOrigin';

  /// Inherited by:
  /// [UpgradedGiftOriginBlockchain]
  /// [UpgradedGiftOriginCraft]
  /// [UpgradedGiftOriginOffer]
  /// [UpgradedGiftOriginPrepaidUpgrade]
  /// [UpgradedGiftOriginResale]
  /// [UpgradedGiftOriginTransfer]
  /// [UpgradedGiftOriginUpgrade]
  static UpgradedGiftOrigin? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UpgradedGiftOriginBlockchain.constructor:
        return UpgradedGiftOriginBlockchain.fromJson(json);
      case UpgradedGiftOriginCraft.constructor:
        return UpgradedGiftOriginCraft.fromJson(json);
      case UpgradedGiftOriginOffer.constructor:
        return UpgradedGiftOriginOffer.fromJson(json);
      case UpgradedGiftOriginPrepaidUpgrade.constructor:
        return UpgradedGiftOriginPrepaidUpgrade.fromJson(json);
      case UpgradedGiftOriginResale.constructor:
        return UpgradedGiftOriginResale.fromJson(json);
      case UpgradedGiftOriginTransfer.constructor:
        return UpgradedGiftOriginTransfer.fromJson(json);
      case UpgradedGiftOriginUpgrade.constructor:
        return UpgradedGiftOriginUpgrade.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is UpgradedGiftOrigin);

  @override
  int get hashCode => runtimeType.hashCode;
}
